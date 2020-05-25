//程序名称：ScanContInput.js
//程序功能：个单新契约扫描件保单录入
//创建日期：2004-12-22 11:10:36
//创建人  ：HYQ
//更新记录：  更新人    更新日期     更新原因/内容

var mSwitch = parent.VD.gVSwitch;
var turnPage = new turnPageClass();
var turnPage1 = new turnPageClass();
var turnPage2 = new turnPageClass();
var k = 0;


 //判断保单是否在创建24小时内
function chekdate(ckDateTime){
	var DateInt="";
	 var mySql1 = new SqlClass();
	    mySql1.setJspName("../../app/NoScanContInputSql.jsp");  
	    mySql1.setSqlId("ChekDateSQL");//查询这个保单承保日期
	    mySql1.addPara("ckDateTime",ckDateTime);
	    sqlState =mySql1.getSQL();
	    var arrResult1 = easyExecSql(sqlState); 
	    if(arrResult1 != null){
	    	DateInt=arrResult1[0][0];
	    	
	 	}
		if(DateInt>25){
			return 1;
		}
			return 0;
}
 //调整投保单显示形式
function initTr()
{
	 if(type=='1' || type=='2')
	 {
	 	 document.all['SubTitle'].style.display = '';
	 }
	 else if(type=='5')
	 {
	 	document.all['SubTitle'].style.display = 'none';
	 }
}

/*********************************************************************
 *  执行新契约扫描的EasyQuery
 *  描述:查询显示对象是扫描件.显示条件:扫描件已上载成功
 *  参数  ：  无
 *  返回值：  无
 *********************************************************************
 */

 //当日撤单 
 function CancelCont(){
    //先判断是否符合撤单条件  投保日期是今天的保单 并且保单状态是签单状态
     var i = 0;
     var checkFlag = 0;
 
    for (i=0; i<GrpGrid.mulLineCount; i++) {
       if (GrpGrid.getSelNo(i)) { 
           checkFlag = GrpGrid.getSelNo();//选中的记录条数
           break;
       }
   } 
  if (checkFlag>0){
      var prtNo = GrpGrid.getRowColData(checkFlag - 1, 1); 	
      var ManageCom = GrpGrid.getRowColData(checkFlag - 1, 2); 
      var PolApplyDate=GrpGrid.getRowColData(checkFlag-1,3);
      var submitFlag= GrpGrid.getRowColData(checkFlag-1,6);
      var out=GrpGrid.getRowColData(checkFlag-1,13);
    
      if(out=='非本行客户'){
         alert("不是本行客户的保单！不能进行当日撤单");
         return;
      }
      //判断是否是今天的保单  今天的日期怎么得到
     
    // var makedate=GrpGrid.getRowColData(checkFlag-1,3);
      var modifyDate="";
    var sqlState = "";
    var mySql1 = new SqlClass();
    mySql1.setJspName("../../app/NoScanContInputSql.jsp");  
    mySql1.setSqlId("ContInputSql_confirmDate");//查询这个保单承保日期
    mySql1.addPara("ProposalContNo",prtNo);
    sqlState =mySql1.getSQL();
    var arrResult1 = easyExecSql(sqlState); 
	if(arrResult1 != null){
	   modifyDate=arrResult1[0][0];
	}
	
     if(compareDate(modifyDate,getCurrentDate())!=0){
        alert("不是当日保单，不能进行撤单操作");
        return;
     }
    
     // 书写SQL语句
	 var strSQL = "";
	 var mySql = new SqlClass();
	 mySql.setJspName("../../app/NoScanContInputSql.jsp");
	 mySql.setSqlId("NoScanContInputSql_2");
	 mySql.addPara("prtNo",prtNo);	
	 strSQL = mySql.getSQL();  
	 arrResult = easyExecSql(strSQL, 1, 0);
	 appFlag=arrResult[0][0];
	
	
     if(appFlag!='05'){//不是签单状态
    	 alert("此保单不是签单状态，不能进行当日撤单操作");
    	 return;
     }
    
     //var urlStr = "./ContCancelDay.jsp?ProposalContNo="+prtNo ;
     //showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:400px;dialogHeight:200px");
  
	 window.open("./CancelContMain.jsp?ProposalContNo="+prtNo, "", "location=no,status:no;help:0;close:0;dialogWidth:400px;dialogHeight:200px");      
	 
	 //window.open("./ContInputNoScanMain.jsp?LoadFlag=3&prtNo="+prtNo+"&ManageCom="+ManageCom+"&NoType="+NoType+"", "", "location=no");       
   }else {
	    alert("请您选择一条记录，然后进行当日撤单！");      
	    return ;			   			    			 
   } 
 }
 //当日撤单返回
function afterCancelDaySubmit(){
 showInfo.close();
  
  if( FlagStr == "Fail" ){//失败
        var urlStr = "../common/jsp/MessagePage.jsp?picture=S&content=" + content;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
        showDiv(operateButton, "true");
       
  }else if(FlagStr == "Succ"){//成功 
        var urlStr = "../common/jsp/MessagePage.jsp?picture=S&content=" + content;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
        showDiv(operateButton, "true");
        //按钮变化 刷新页面  
        
  }
}
function easyQueryPLClick(){
	sfbutton.style.display="";
	contData.style.display="none";
	PLData.style.display="";
	newbank.style.display="none";
	
	// 书写SQL语句
	var strSQL = "";
	var mySql = new SqlClass();
	mySql.setJspName("../../app/NoScanContInputSql.jsp");
	mySql.setSqlId("Sql_PL");
	mySql.getWherePart("PrtNo");
	mySql.getWherePart("InputDate");
	mySql.addPara("Operator",operator);
	//mySql.getWherePart("ManageCom");	
	strSQL = mySql.getSQL();  
 	
	turnPage2.queryModal(strSQL, PLGrid);
	showInfo.close();
	if (PLGrid.mulLineCount==0)
	{
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "未查询到结果" ;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
	}
	return true;
	
}
function PLPrint1(){
	var i = 0;
  	var checkFlag = 0;
  	var state = "0";
  	var sFeatures = "";
  	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//选中的记录条数
	    	break;
	    }
	}
	
		if (tRow>0){
			var	prtNo = GrpGrid.getRowColData(tRow-1, 1);
	    var sManageCom = GrpGrid.getRowColData(tRow-1, 16);
	    var payMoney = GrpGrid.getRowColData(tRow-1, 11);
	    var TransNo = GrpGrid.getRowColData(tRow-1,5);
	     var payDate=GrpGrid.getRowColData(tRow-1,13);
	     var appntName  = GrpGrid.getRowColData(tRow-1,15);
	 	
	    fm.all("Action").value = "reprint"
	    fm.all("Action1").value = TransNo;
	    fm.all("Action2").value = prtNo;
	    	
	  	
	    	 fm.action="./printCont.jsp?contNo="+prtNo;
	    	 fm.submit(); //提交
	    	 fm.action="./AeviceContInput.jsp";
	
		}
	    

}
function PLPrint(){
	var i = 0;
  	var checkFlag = 0;
  	var state = "0";
  	var sFeatures = "";
	  for (i=0; i<PLGrid.mulLineCount; i++) {
	    if (PLGrid.getSelNo(i)) { 
	      checkFlag = PLGrid.getSelNo();//选中的记录条数
	      break;
	    }
	  }
  if (checkFlag>0){
  	var tResult = PLGrid.getRowColData(checkFlag-1,13);
  	var tState = PLGrid.getRowColData(checkFlag-1,14);
  	if(tResult=='0000' && tState=='S'){
  	
  	var prtNo = PLGrid.getRowColData(checkFlag-1,4);
  	var appntName = PLGrid.getRowColData(checkFlag-1,3);
  	var payDate = PLGrid.getRowColData(checkFlag-1,10);
  	var payMoney = PLGrid.getRowColData(checkFlag-1,7);
  		if(confirm("您确定要打印投保单号："+prtNo+"收费凭证么")){ 
  		
  		
  		//	newwin=window.open("./PLContPrint.jsp?prtNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney, "", "location=no");
		//newwin.moveTo(0,0);
		//newwin.resizeTo(screen.width,screen.height);
  			
  			//fm.target= "_blank";
	  		//fm.action="./PLContPrint.jsp?prtNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney;
		  //  fm.submit();
		    window.open("../ireportPrint/printPL.jsp?contNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney);
	    }
  	}else{
  		alert("本条记录不符合打印要求");
  	}
  }else {
	alert("请您选择一条记录，然后进行打印！");
  } 
}
function NewBankPrint(){
	var i = 0;
  	var checkFlag = 0;
  	var state = "0";
  	var sFeatures = "";
	  for (i=0; i<GrpGrid.mulLineCount; i++) {
	    if (GrpGrid.getSelNo(i)) { 
	      checkFlag = GrpGrid.getSelNo();//选中的记录条数
	      break;
	    }
	  }
  if (checkFlag>0){
  	var tState = GrpGrid.getRowColData(checkFlag-1,7);
  	if(tState=='提交'){
  	
  	var prtNo = GrpGrid.getRowColData(checkFlag-1,1);
  	//var appntName = GrpGrid.getRowColData(checkFlag-1,12);
  	
  		if(confirm("您确定要打印投保单号："+prtNo+"自动转账授权书么")){
  		
  		//	newwin=window.open("./PLContPrint.jsp?prtNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney, "", "location=no");
		//newwin.moveTo(0,0);
		//newwin.resizeTo(screen.width,screen.height);
  			
  	//		fm.target= "_blank";
	//  		fm.action="./NewBankPrint.jsp?prtNo="+prtNo+"&flag=1";
	//	    fm.submit();
		    
		    window.open("../ireportPrint/print.jsp?contNo="+prtNo+"&flag=1");
		    
	    }
  	}else{
  		alert("本条记录不符合打印要求");
  	}
  }else {
	alert("请您选择一条记录，然后进行打印！");
  } 
}

function exactQueryClick(){

	if(fm.CIF.value.length==0){
		
		alert("精准查询需要输入CIF号");
		return;
	}
	
	newbank.style.display="";
	sfbutton.style.display="none";
	contData.style.display="";
	PLData.style.display="none";
	// 初始化表格
	initGrpGrid();
	var today = fm.CurrentDate.value;
 	//对输入的查询条件进行校验
	/*if( verifyInput2() == false ) 
	{
		return false;
	}*/
	var showStr="正在保存数据，请您稍候并且不要修改屏幕上的值或链接其他页面";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
//	var managecom;
//	//机构控制<如果没有选择管理机构则使用登陆时的登陆机构>
//	if(trim(fm.ManageCom.value)=="")
//	{
//		//alert("登陆机构代码："+manageCom);
//		managecom = manageCom;
//		//fm.ManageCom.value=managecom;
//		//if(manageCom == "8611" || manageCom == "86"){
//		//	fm.ManageCom.value = "00";
//		//}else{
//		//	fm.ManageCom.value = manageCom.substring(4);
//		//}
//	}else if(trim(fm.ManageCom.value)=="00"){
//		managecom = "8611";
//	}else{
//		managecom = "8611" + fm.ManageCom.value;
//	}
	// 书写SQL语句
	var strSQL = "";
	var mySql = new SqlClass();
	mySql.setJspName("../../app/NoScanContInputSql.jsp");
	mySql.setSqlId("exactNoScanContInputSql_0");
	mySql.getWherePart("PrtNo");
	mySql.getWherePart("InputDate");
	mySql.getWherePart("FinacleTranNo");
	mySql.addPara("Operator",operator);
	mySql.addPara("GRPCONTNO",fm.CIF.value);	
	mySql.addPara("today",today);	
	strSQL = mySql.getSQL();  
 	
	turnPage1.queryModal(strSQL, GrpGrid);
	closeDia();
	if (GrpGrid.mulLineCount==0)
	{
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "未查询到结果" ;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
	}
	return true;

	
	
}
function easyQueryClick1()
{
	chekdate();
	newbank.style.display="";
	sfbutton.style.display="none";
	contData.style.display="";
	PLData.style.display="none";
	// 初始化表格
	initGrpGrid();
	var today = fm.CurrentDate.value;
 	//对输入的查询条件进行校验
	/*if( verifyInput2() == false ) 
	{
		return false;
	}*/
	var showStr="正在保存数据，请您稍候并且不要修改屏幕上的值或链接其他页面";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
	fm.all("Action").value = "Refresh";
//	var managecom;
//	//机构控制<如果没有选择管理机构则使用登陆时的登陆机构>
//	if(trim(fm.ManageCom.value)=="")
//	{
//		//alert("登陆机构代码："+manageCom);
//		managecom = manageCom;
//		//fm.ManageCom.value=managecom;
//		//if(manageCom == "8611" || manageCom == "86"){
//		//	fm.ManageCom.value = "00";
//		//}else{
//		//	fm.ManageCom.value = manageCom.substring(4);
//		//}
//	}else if(trim(fm.ManageCom.value)=="00"){
//		managecom = "8611";
//	}else{
//		managecom = "8611" + fm.ManageCom.value;
//	}
	// 书写SQL语句
	  
	var strSQL = "";
	var mySql = new SqlClass();
	mySql.setJspName("../../app/NoScanContInputSql.jsp");
	mySql.setSqlId("NoAdviceContInputSql_0");
	mySql.getWherePart("PrtNo");
	mySql.getWherePart("InputDate");
	mySql.getWherePart("CIF");
	mySql.getWherePart("FinacleTranNo");
	
	
 
	mySql.addPara("Operator",operator);	
	mySql.addPara("manageCom",manageCom);	
	mySql.addPara("today",today);	
	strSQL = mySql.getSQL();  
 	
	turnPage1.queryModal(strSQL, GrpGrid);
	closeDia();
	if (GrpGrid.mulLineCount==0)
	{
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "未查询到结果" ;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
	}
	return true;
} 
function easyQueryClick()
{
	newbank.style.display="";
	sfbutton.style.display="none";
	contData.style.display="";
	PLData.style.display="none";
	// 初始化表格
	initGrpGrid();
	var today = fm.CurrentDate.value;
 	//对输入的查询条件进行校验
	/*if( verifyInput2() == false ) 
	{
		return false;
	}*/
	var showStr="正在保存数据，请您稍候并且不要修改屏幕上的值或链接其他页面";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
//	var managecom;
//	//机构控制<如果没有选择管理机构则使用登陆时的登陆机构>
//	if(trim(fm.ManageCom.value)=="")
//	{
//		//alert("登陆机构代码："+manageCom);
//		managecom = manageCom;
//		//fm.ManageCom.value=managecom;
//		//if(manageCom == "8611" || manageCom == "86"){
//		//	fm.ManageCom.value = "00";
//		//}else{
//		//	fm.ManageCom.value = manageCom.substring(4);
//		//}
//	}else if(trim(fm.ManageCom.value)=="00"){
//		managecom = "8611";
//	}else{
//		managecom = "8611" + fm.ManageCom.value;
//	}
	// 书写SQL语句
	var strSQL = "";
	var mySql = new SqlClass();
	mySql.setJspName("../../app/NoScanContInputSql.jsp");
	mySql.setSqlId("NoScanContInputSql_0");
	mySql.getWherePart("PrtNo");
	mySql.getWherePart("InputDate");
	mySql.getWherePart("CIF");
	mySql.getWherePart("FinacleTranNo");
	
	//mySql.getWherePart("ManageCom");	
//	mySql.addPara("managecom",managecom);	 
	mySql.addPara("Operator",operator);	
	mySql.addPara("today",today);	
	strSQL = mySql.getSQL();  
 	
	turnPage1.queryModal(strSQL, GrpGrid);
	closeDia();
	if (GrpGrid.mulLineCount==0)
	{
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "未查询到结果" ;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
	}
	return true;
} 
/**
 * 查询保单详细信息
 * @return
 */
function PolDetailQuery()
{

	var i = 0;
	var SelCount = 0;     //总共选中的行数
	var SelNo = 0;        //被选中的行
	var NoType = 2;       //保单查询类型
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//选中的记录条数
	    	break;
	    }
	}
	
	
	
	if (tRow>0){
		var	prtNo = GrpGrid.getRowColData(tRow-1, 1);
    var sManageCom = GrpGrid.getRowColData(tRow-1, 2);
    var AgentCom = GrpGrid.getRowColData(tRow-1, 11);
    var TransNo = GrpGrid.getRowColData(tRow-1,5);
     var out=GrpGrid.getRowColData(tRow-1,13);
     var funcType  = GrpGrid.getRowColData(tRow-1,15);
    if(out=='非本行客户'){
    alert("不是本行客户的保单！不能进行保单查看");
    return;
    }
    
    if("CCIC"==AgentCom){
		
		newwin=window.open("../app/CCIC/"+funcType+"/showAppInfo/"+TransNo+"/showOnlyLook.do");       
	    newwin.moveTo(0,0);
        newwin.resizeTo(screen.width,screen.height);
	}else{
		if(funcType.length==0){
			
			 newwin=window.open("../app/ContInputNoScanMain.jsp?LoadFlag=3&prtNo="+prtNo+"&readonly=readonly&AgentCom="+AgentCom+"&NoType="+NoType+"&display=1", "", "location=no");
				newwin.moveTo(0,0);
				newwin.resizeTo(screen.width,screen.height);
		}else{
			newwin=window.open("./ContInputSpecialNoScanMain.jsp?LoadFlag=3&prtNo="
	    			+prtNo+"&TransNo="+TransNo+"&ManageCom="+sManageCom+"&NoType="
	    			+NoType+"&readonly=readonly&AgentCom="+AgentCom+""+"&funcType="+funcType+"", "","location=no");       
		    newwin.moveTo(0,0);
	        newwin.resizeTo(screen.width,screen.height);
		}
	}
   
	}
    else{
        alert( "请先选择一条记录，再点击操作按钮" );
        return;
    }
}
function RefreshQuery()
{
	var i = 0;
	var SelCount = 0;     //总共选中的行数
	var SelNo = 0;        //被选中的行
	//var NoType = 2;       //保单查询类型
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//选中的记录条数
	    	break;
	    }
	}
	
	
	
	if (tRow>0){
		var	prtNo = GrpGrid.getRowColData(tRow-1, 1);
    var sManageCom = GrpGrid.getRowColData(tRow-1, 16);
    var AgentCom = GrpGrid.getRowColData(tRow-1, 11);
    var TransNo = GrpGrid.getRowColData(tRow-1,5);
     var out=GrpGrid.getRowColData(tRow-1,13);
     var funcType  = GrpGrid.getRowColData(tRow-1,15);
    
    fm.all("Action").value = "refresh"
    fm.all("Action1").value = TransNo;
    fm.all("Action2").value = prtNo;
		submitForm();
   
	
	
   
	}
    else{
        alert( "请先选择一条记录，再点击操作按钮" );
        return;
    }
}
//content
function PrintQuery(){
	var i = 0;
  	var checkFlag = 0;
  	var state = "0";
  	var sFeatures = "";
  	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//选中的记录条数
	    	break;
	    }
	}
	
		if (tRow>0){
			var	prtNo = GrpGrid.getRowColData(tRow-1, 1);
	    var sManageCom = GrpGrid.getRowColData(tRow-1, 16);
	    var payMoney = GrpGrid.getRowColData(tRow-1, 11);
	    var TransNo = GrpGrid.getRowColData(tRow-1,5);
	     var payDate=GrpGrid.getRowColData(tRow-1,13);
	     var appntName  = GrpGrid.getRowColData(tRow-1,15);
	 	var flagtype=GrpGrid.getRowColData(tRow-1,14);
	 //	var ckDateTime=GrpGrid.getRowColData(tRow-1,18);
	 	var	polDate = GrpGrid.getRowColData(tRow - 1, 3);
	 	
	 	if(confirm("您确定要打印："+prtNo+"合同么")){ 	
	    	var sqlState="";
	    	var mySql = new SqlClass();
	        mySql.setJspName("../../app/ContInputSql.jsp");  
	        mySql.setSqlId("checkdate");
	        sqlState =mySql.getSQL();
	        var arrResult = easyExecSql(sqlState); 
	        if(arrResult==null){
	        	alert("系统错误");
	        }else{
	        	var dataServer = arrResult[0][1];
	        	if(dataServer==polDate){
	        		
	        	}else{
	        		alert("只能打印当天合同");
	        		return;
	        	}
	        }
//	 	if(chekdate(polDate+" "+ckDateTime)!=0){
//	 	alert("超过24小时的保单！不能进行打印");
//	 	return;
//	 	}
	    if(flagtype!='已承保'){
	    alert("未承保的保单！不能进行打印");
	    return;
	    }
	 
	    PLPrint1();
	   
		}
	 	 
		}
	    else{
	        alert( "请先选择一条记录，再点击操作按钮" );
	        return;
	    }

}
function RePrintQuery()
{
	var i = 0;
	var SelCount = 0;     //总共选中的行数
	var SelNo = 0;        //被选中的行
	//var NoType = 2;       //保单查询类型
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//选中的记录条数
	    	break;
	    }
	}
	
	
	
	if (tRow>0){
		var	prtNo = GrpGrid.getRowColData(tRow-1, 1);
    var sManageCom = GrpGrid.getRowColData(tRow-1, 16);
    var AgentCom = GrpGrid.getRowColData(tRow-1, 11);
    var TransNo = GrpGrid.getRowColData(tRow-1,5);
     var out=GrpGrid.getRowColData(tRow-1,13);
     var funcType  = GrpGrid.getRowColData(tRow-1,15);
 	var flagtype=GrpGrid.getRowColData(tRow-1,14);
//	var ckDateTime=GrpGrid.getRowColData(tRow-1,18);
 	var	polDate = GrpGrid.getRowColData(tRow - 1, 3);
// 	if(chekdate(polDate+" "+ckDateTime)!=0){
//		  alert("超过24小时的保单！不能进行打印");
//		    return;
//	  }
    if(flagtype!='已承保'){
    alert("未承保的保单！不能进行重打");
    return;
    }
    fm.all("Action").value = "reprint"
    fm.all("Action1").value = TransNo;
    fm.all("Action2").value = prtNo;
    if(confirm("您确定要重打："+prtNo+"合同么")){ 
    	var sqlState="";
    	var mySql = new SqlClass();
        mySql.setJspName("../../app/ContInputSql.jsp");  
        mySql.setSqlId("checkdate");
        sqlState =mySql.getSQL();
        var arrResult = easyExecSql(sqlState); 
        if(arrResult==null){
        	alert("系统错误");
        }else{
        	var dataServer = arrResult[0][1];
        	if(dataServer==polDate){
        		
        	}else{
        		alert("只能重打当天合同");
        		return;
        	}
        }
//    if(chekdate(polDate+" "+ckDateTime)!=0){
//  		  alert("超过24小时的保单！不能进行打印");
//  		    return;
//  	  }
      if(flagtype!='已承保'){
      alert("未承保的保单！不能进行重打");
      return;
      }
   // fm.submit(); //提交
		submitForm();
    }
	
	
   
	}
    else{
        alert( "请先选择一条记录，再点击操作按钮" );
        return;
    }
}
function AevicePrintQuery()
{
	var i = 0;
	var SelCount = 0;     //总共选中的行数
	var SelNo = 0;        //被选中的行
	//var NoType = 2;       //保单查询类型
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//选中的记录条数
	    	break;
	    }
	}
	
	
	
	if (tRow>0){
		var	prtNo = GrpGrid.getRowColData(tRow-1, 1);
    var sManageCom = GrpGrid.getRowColData(tRow-1, 16);
    var AgentCom = GrpGrid.getRowColData(tRow-1, 11);
    var TransNo = GrpGrid.getRowColData(tRow-1,5);
     var out=GrpGrid.getRowColData(tRow-1,13);
     var funcType  = GrpGrid.getRowColData(tRow-1,15);
 	var flagtype=GrpGrid.getRowColData(tRow-1,14);
 //	 var ckDateTime=GrpGrid.getRowColData(tRow-1,18);
	 	var	polDate = GrpGrid.getRowColData(tRow - 1, 3);
  
  
    if(confirm("您确定要打印："+prtNo+"Advice与回执么")){ 
    	var sqlState="";
    	var mySql = new SqlClass();
        mySql.setJspName("../../app/ContInputSql.jsp");  
        mySql.setSqlId("checkdate");
        sqlState =mySql.getSQL();
        var arrResult = easyExecSql(sqlState); 
        if(arrResult==null){
        	alert("系统错误");
        }else{
        	var dataServer = arrResult[0][1];
        	if(dataServer==polDate){
        		
        	}else{
        		alert("只能打印当天Aevice与回执");
        		return;
        	}
        }
//      if(chekdate(polDate+" "+ckDateTime)!=0){
//  		 // alert("超过24小时的保单！不能进行重打");
//  		  //  return;
//  	  }
      if(flagtype!='已承保'){
      alert("未承保的保单！不能打印Aevice与回执");
      return;
      }
   	 //window.open("../ireportPrint/printPL.jsp?contNo="+fm.all("ProposalContNo").value+"&AgentCom="+fm.all("AgentCom").value+"&TransNo="+fm.all("TransNo").value);
   	
    	 fm.action="../ireportPrint/AeviceprintPL.jsp?contNo="+prtNo+"&TransNo="+TransNo;
    	 fm.submit(); //提交
    	 fm.action="./AeviceContInput.jsp";
    }
	
	
   
	}
    else{
        alert( "请先选择一条记录，再点击操作按钮" );
        return;
    }
}
function CopyCont(FlagStr, content){
	
	closeDia();
	if (FlagStr=="Succ" ){
		
		var i = 0;
	  	var checkFlag = 0;
	  	var state = "0";
	  	var sFeatures = "";
	  	for (i=0; i<GrpGrid.mulLineCount; i++) {
	    	if (GrpGrid.getSelNo(i)) { 
	      	checkFlag = GrpGrid.getSelNo();//选中的记录条数
	      	break;
	    	}
	  	}
	  	
	  	if (checkFlag>0){
	    	var	prtNo = GrpGrid.getRowColData(checkFlag - 1, 1);
	    	var	polDate = GrpGrid.getRowColData(checkFlag - 1, 3);
	    	var sqlState="";
	    	var mySql = new SqlClass();
	        mySql.setJspName("../../app/ContInputSql.jsp");  
	        mySql.setSqlId("checkdate");
	        sqlState =mySql.getSQL();
	        var arrResult = easyExecSql(sqlState); 
	        if(arrResult==null){
	        	alert("系统错误");
	        }else{
	        	var dataServer = arrResult[0][1];
	        	if(dataServer==polDate){
	        		
	        	}else{
	        		alert("只能复制当天投保单");
	        		return;
	        	}
	        }
	    	var out = GrpGrid.getRowColData(checkFlag-1,13); 	
	    	insurancecom= GrpGrid.getRowColData(checkFlag-1,11); 
	    	var funcType  = GrpGrid.getRowColData(checkFlag-1,15);
	    	
	    	if(funcType=="TOPUP"){
	    		alert("TOPUP不允许复制");
	    		return ;
	    	}
	    	if(out=='非本行客户'){
	    		alert("不是本行客户的保单！请重新选择！");
	    		return;
	    	}
	    	if(!confirm("确认复制投保单号为 "+prtNo+" 的投保单吗?")){
	    		return;
	    	}
	    	fm.insurancecom.value=insurancecom;
	    	fm.proposalcontno.value=prtNo;
//	    	newwin=window.open("../app/CopyContSave.jsp?prtNo="+prtNo+"&insurancecom="+insurancecom, "", "location=no");
//			newwin.moveTo(200,300);
//			newwin.resizeTo(800,200);
	    	fm.action="../app/CopyContSave.jsp?funcType="+funcType;
	    	submitFormCopy();
		}else{
			alert("请您选择一条记录，然后进行复制！");
		}
	}else{
			alert("不可复制 ，"+content);
	}
	
}
function submitFormCopy()
{
	var mOperate='';
	var i = 0;
	var showStr="正在复制保单，请您稍候并且不要修改屏幕上的值或链接其他页面";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
	fm.submit(); //提交
}
function submitForm()
{
	var i = 0;
	var showStr="正在保存数据，请您稍候并且不要修改屏幕上的值或链接其他页面";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	//showInfo=window.showModelessDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:250px");
	showInfo =ModelessDialog(urlStr,window);
	fm.submit(); //提交
}
//继续录入的校检
function checkCif(op){
	if(!checkDate()){
		alert("此时间段不能进行交易");
		return;
	}
	
	var TransNo="";
	var CIFID="";
	var i = 0;
	  var checkFlag = 0;
	  var state = "0";
	  var sFeatures = "";
	  for (i=0; i<GrpGrid.mulLineCount; i++) {
	    if (GrpGrid.getSelNo(i)) { 
	      checkFlag = GrpGrid.getSelNo();//选中的记录条数
	      break;
	    }
	  } 
	
	
	
    if (checkFlag>0){
    	var	prtNo = GrpGrid.getRowColData(checkFlag - 1, 1); 	
        var ManageCom = GrpGrid.getRowColData(checkFlag - 1, 2); 
        CIFID =GrpGrid.getRowColData(checkFlag-1,7);
        var submitFlag= GrpGrid.getRowColData(checkFlag-1,6);
        var agentCom = GrpGrid.getRowColData(checkFlag-1,11);
        TransNo = GrpGrid.getRowColData(checkFlag-1,5);
    	
    }else{
		alert("请您选择一条记录，然后进行录入！");
		
		return;
		  //	window.open("./ContInputNoScanMain.jsp?prtNo="+fm.PrtNo.value+"&ManageCom="+fm.ManageCom.value+"&NoType="+NoType+"", "", sFeatures);           			   			    			 
    } 
	
	var showStr = "正在检查数据，请您稍候并且不要修改屏幕上的值或链接其他页面";
	var urlStr = "../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
	fm.target="fraSubmit";
	fm.action="./CheckCif.jsp?option="+op+"&TransNo="+TransNo+"&CIFID="+CIFID; 
	fm.submit(); // 提交
}


function GoToInput(FlagStr, content){

	closeDia();
	if (FlagStr=="Succ" ){
		
		
		
		 var i = 0;
		  var checkFlag = 0;
		  var state = "0";
		  var sFeatures = "";
		  for (i=0; i<GrpGrid.mulLineCount; i++) {
		    if (GrpGrid.getSelNo(i)) { 
		      checkFlag = GrpGrid.getSelNo();//选中的记录条数
		      break;
		    }
		  } 
		 
		  
		  if (checkFlag>0){
			  var	polDate = GrpGrid.getRowColData(checkFlag - 1, 3);
			  var sqlState1="";
				var mySql1 = new SqlClass();
			  mySql1.setJspName("../../app/ContInputSql.jsp");  
			  mySql1.setSqlId("checkdate");
			  sqlState1 =mySql1.getSQL();
			  var arrResult1 = easyExecSql(sqlState1); 
			  if(arrResult1==null){
			  	alert("系统错误");
			  }else{
			  	var dataServer = arrResult1[0][1];
			  	if(dataServer==polDate){
			  		
			  		
			  	}else{
			  		alert("只能继续录入当天投保单");
			  		return;
			  	}
			  }

			  
			  
		    var	prtNo = GrpGrid.getRowColData(checkFlag - 1, 1); 	
		    var ManageCom = GrpGrid.getRowColData(checkFlag - 1, 2); 
		    var PolApplyDate=GrpGrid.getRowColData(checkFlag-1,3);
		    var submitFlag= GrpGrid.getRowColData(checkFlag-1,6);
		    var TransNo = GrpGrid.getRowColData(checkFlag-1,5);
		    var out=GrpGrid.getRowColData(checkFlag-1,13);
		    var agentCom = GrpGrid.getRowColData(checkFlag-1,11);
		    var funcType  = GrpGrid.getRowColData(checkFlag-1,15);
		    if(out=='非本行客户'){
		    alert("不是本行客户的保单！不能进行修改");
		    return;
		    }
		    // 书写SQL语句
			var strSQL = "";
			var mySql = new SqlClass();
			mySql.setJspName("../../app/NoScanContInputSql.jsp");
			mySql.setSqlId("NoScanContInputSql_1");
			mySql.addPara("prtNo",prtNo);	
			mySql.addPara("TransNo",TransNo);	
			strSQL = mySql.getSQL();  
			arrResult = easyExecSql(strSQL, 1, 0);
			if (arrResult[0][0]=='1') {
				submitFlag = arrResult[0][0];
			}
			
		    if(submitFlag =='1'){
//		    	alert("此保单已经提交，不能进行修改！");
//		    	return;
		    }
		    mySql = new SqlClass();
			mySql.setJspName("../../app/NoScanContInputSql.jsp");
			mySql.setSqlId("PROPOSALCONTNO");
			mySql.addPara("TransNo",TransNo);	
			strSQL = mySql.getSQL();  
			arrResult = easyExecSql(strSQL, 1, 0);
			if(arrResult==null){
				alert("该保单出错！");
				return;
			}
			if("15"==arrResult[0][2]){
				
				alert("该投保单已经取消不能继续录入");
				return;
			}
			var  InsuranceCom="";
			  var NoType = type;
			  
			if("CCIC"==agentCom){
				
				newwin=window.open("../app/CCIC/"+funcType+"/showAppInfo/"+TransNo+"/show.do");       
			    newwin.moveTo(0,0);
			    
		        newwin.resizeTo(screen.width,screen.height);
			}else{
				if(funcType.length==0){
					
					newwin=window.open("./ContInputNoScanMain.jsp?LoadFlag=3&prtNo="
			    			+prtNo+"&TransNo="+TransNo+"&ManageCom="+ManageCom+"&NoType="
			    			+NoType+"&AgentCom="+agentCom+""+"&funcType="+funcType+"", "","location=no");       
				    newwin.moveTo(0,0);
			        newwin.resizeTo(screen.width,screen.height);
				}else{
					newwin=window.open("./ContInputSpecialNoScanMain.jsp?LoadFlag=3&prtNo="
			    			+prtNo+"&TransNo="+TransNo+"&ManageCom="+ManageCom+"&NoType="
			    			+NoType+"&AgentCom="+agentCom+""+"&funcType="+funcType+"", "","location=no");       
				    newwin.moveTo(0,0);
			        newwin.resizeTo(screen.width,screen.height);
				}
			}
			
			    	
				//}
			}else {
			alert("请您选择一条记录，然后进行录入！");
			return ;
		  //	window.open("./ContInputNoScanMain.jsp?prtNo="+fm.PrtNo.value+"&ManageCom="+fm.ManageCom.value+"&NoType="+NoType+"", "", sFeatures);           			   			    			 
		 } 
	}else{
		alert("不可继续录入，"+content);
	}
	
 
}

function afterSubmit4(FlagStr, content){
	
	if (FlagStr=="Succ" ){
		closeDia();
	}else{
		 showAlert("操作失败" ,content);
	}
	
}
function DeleteApp()
{ 
	
	if(!checkDate()){
		alert("此时间段不能进行交易");
		return;
	}
  var i = 0;
  var checkFlag = 0;
  var state = "0";
  var sFeatures = "";
  for (i=0; i<GrpGrid.mulLineCount; i++) {
    if (GrpGrid.getSelNo(i)) { 
      checkFlag = GrpGrid.getSelNo();//选中的记录条数
      break;
    }
  }
  if (checkFlag>0){
  
  var mCurrentDate = fm.CurrentDate.value;
  var tMakeDate = GrpGrid.getRowColData(checkFlag-1,8);
  var tFeeFlag = GrpGrid.getRowColData(checkFlag-1,10);
  var tSubmitFlag = GrpGrid.getRowColData(checkFlag-1,6);
  var out=GrpGrid.getRowColData(checkFlag-1,13);
   if(out=='非本行客户'){
     var contNo= GrpGrid.getRowColData(checkFlag-1,5);
	 if(confirm("您确定要取消投保单号："+GrpGrid.getRowColData(checkFlag-1,1)+"这条记录么")){
	  	fm.action="./ContOutDeleteSave.jsp?contNo="+contNo;
	  	fm.submit();
	  
	  }
	  	return;
   }
  if(mCurrentDate!=tMakeDate&&tSubmitFlag=='1'){
  alert("不能取消今天之外的已提交保单！");
  return;
  }
  if(tFeeFlag=='Y'&&tSubmitFlag=='1'){
  alert("不能取消已经提交的实时扣款保单！");
   return;
  }
  var transno= GrpGrid.getRowColData(checkFlag-1,5);
  if(confirm("您确定要取消投保单号："+GrpGrid.getRowColData(checkFlag-1,1)+"这条记录么")){
  fm.action="./ContDeleteSave.jsp?TransNo="+transno;
  fm.submit();
  }
  }else {
	alert("请您选择一条记录，然后进行取消！");
  } 
}

/*********************************************************************
 *  银行卡号密码返回结果处理
 *  返回值：  无
 *********************************************************************
 */
function afterSubmit( FlagStr, content)
{   
	//var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + content ;
	//showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:450px;dialogHeight:180px");
	 showDialog( FlagStr, content);
	if(FlagStr=="Succ"){
		easyQueryClick();
	}
}

function afterSubmit1(FlagStr,Result)
{
	showInfo.close();
	var action = fm.all("Action").value;
	if (action == "query")
	{
		if (FlagStr == "true")
		{
			queryDetailProcess(Result);
			strResult = Result;
		}
		else
		{
			alert("查询失败!");
		}
	}
	if (action == "update")
	{
	if (FlagStr == "true"){
			alert("操作成功!");
			cancelClick()
		}
		else
			alert("操作失败!");
	}
	if (action == "insert")
	{
		if (FlagStr == "true"){
			alert("操作成功!");
			cancelClick()
		}
		else
			alert("操作失败!");
	}
	if (action == "reprint")
	{
		if (FlagStr == "true"){
			alert("操作成功!");
			PLPrint1();
		}else{
			alert("操作失败!");
			}
	}
	if (action == "refresh")
	{
		if (FlagStr == "true"){
			var selUserNo = GrpGrid.getSelNo();
			GrpGrid.setRowColData(selUserNo-1,14,'已承保');
			
			alert("操作成功!");
			}
		else{
			alert("操作失败!");
			}
	}
}

function getBankCardNo()
{ 
	//获取刷卡器刷出的银行卡号
	return fm.all('BankCardNo').value;
}

function getBankCardPassWord()
{ 
	//获取密码器输入的用户密码
	return fm.all('GetPassWord').value;
}


//进行工作时间选择，周一到周五工作日系统可交易时间08:30-20:30，节假日24小时全天候可交易。更新时间：2018-05-16 11:39 Wednesday
function checkDate(){
//	return true;
	var sqlState="";
	var mySql = new SqlClass();
    mySql.setJspName("../../app/ContInputSql.jsp");  
    mySql.setSqlId("checkdate");
    sqlState =mySql.getSQL();
    var arrResultDate = easyExecSql(sqlState); 
    //arrResultDate[0]=[14:21,2018-05-16];arrResultDate[0][0]="14:21";arrResultDate[0][1]="2018-05-16";
    if(arrResultDate==null){
    	return false;
    }else{
    	var time = arrResultDate[0][0].split(":");     //time[0]="14";time[1]="21";
		var hour = parseFloat(time[0]);
		var minute = parseFloat(time[1]);
		var dateHoliday = arrResultDate[0][1];
    	if(!checkHoliday(dateHoliday)){    //不是Holiday时限制交易时间为早8:30-晚20:30
    		if(hour > 8 && hour < 20){
    	 		return true;
    	 	}
    	 	if(hour == 20){
    	 		if( minute <= 30){
    	 			return true;
    	 		}
    	 	}
    	 	if(hour == 8){
    	 		if(minute >= 30){
    	 			return true;
    	 		}
    	 	}	
    	}else{    //是Holiday时不限制交易时间
    		return true;
    	}
    	return false;    //在不是Holiday的交易时间之外，不允许录单
    }
}
//holiday查询--投保单录入功能定制化操作
function checkHoliday(date){
	var sqlState="";
	var mySql = new SqlClass();
    mySql.setJspName("../../app/ContInputSql.jsp");  
    mySql.setSqlId("checkHoliday");
    mySql.addPara("holiday",date);
    sqlState =mySql.getSQL();
    var arrResultHoliday = easyExecSql(sqlState); 
    if(arrResultHoliday!=null){
    	return true;
    }else{
    	return false;
    }
}