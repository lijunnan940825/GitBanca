//�������ƣ�ScanContInput.js
//�����ܣ���������Լɨ�������¼��
//�������ڣ�2004-12-22 11:10:36
//������  ��HYQ
//���¼�¼��  ������    ��������     ����ԭ��/����

var mSwitch = parent.VD.gVSwitch;
var turnPage = new turnPageClass();
var turnPage1 = new turnPageClass();
var turnPage2 = new turnPageClass();
var k = 0;


 //�жϱ����Ƿ��ڴ���24Сʱ��
function chekdate(ckDateTime){
	var DateInt="";
	 var mySql1 = new SqlClass();
	    mySql1.setJspName("../../app/NoScanContInputSql.jsp");  
	    mySql1.setSqlId("ChekDateSQL");//��ѯ��������б�����
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
 //����Ͷ������ʾ��ʽ
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
 *  ִ������Լɨ���EasyQuery
 *  ����:��ѯ��ʾ������ɨ���.��ʾ����:ɨ��������سɹ�
 *  ����  ��  ��
 *  ����ֵ��  ��
 *********************************************************************
 */

 //���ճ��� 
 function CancelCont(){
    //���ж��Ƿ���ϳ�������  Ͷ�������ǽ���ı��� ���ұ���״̬��ǩ��״̬
     var i = 0;
     var checkFlag = 0;
 
    for (i=0; i<GrpGrid.mulLineCount; i++) {
       if (GrpGrid.getSelNo(i)) { 
           checkFlag = GrpGrid.getSelNo();//ѡ�еļ�¼����
           break;
       }
   } 
  if (checkFlag>0){
      var prtNo = GrpGrid.getRowColData(checkFlag - 1, 1); 	
      var ManageCom = GrpGrid.getRowColData(checkFlag - 1, 2); 
      var PolApplyDate=GrpGrid.getRowColData(checkFlag-1,3);
      var submitFlag= GrpGrid.getRowColData(checkFlag-1,6);
      var out=GrpGrid.getRowColData(checkFlag-1,13);
    
      if(out=='�Ǳ��пͻ�'){
         alert("���Ǳ��пͻ��ı��������ܽ��е��ճ���");
         return;
      }
      //�ж��Ƿ��ǽ���ı���  �����������ô�õ�
     
    // var makedate=GrpGrid.getRowColData(checkFlag-1,3);
      var modifyDate="";
    var sqlState = "";
    var mySql1 = new SqlClass();
    mySql1.setJspName("../../app/NoScanContInputSql.jsp");  
    mySql1.setSqlId("ContInputSql_confirmDate");//��ѯ��������б�����
    mySql1.addPara("ProposalContNo",prtNo);
    sqlState =mySql1.getSQL();
    var arrResult1 = easyExecSql(sqlState); 
	if(arrResult1 != null){
	   modifyDate=arrResult1[0][0];
	}
	
     if(compareDate(modifyDate,getCurrentDate())!=0){
        alert("���ǵ��ձ��������ܽ��г�������");
        return;
     }
    
     // ��дSQL���
	 var strSQL = "";
	 var mySql = new SqlClass();
	 mySql.setJspName("../../app/NoScanContInputSql.jsp");
	 mySql.setSqlId("NoScanContInputSql_2");
	 mySql.addPara("prtNo",prtNo);	
	 strSQL = mySql.getSQL();  
	 arrResult = easyExecSql(strSQL, 1, 0);
	 appFlag=arrResult[0][0];
	
	
     if(appFlag!='05'){//����ǩ��״̬
    	 alert("�˱�������ǩ��״̬�����ܽ��е��ճ�������");
    	 return;
     }
    
     //var urlStr = "./ContCancelDay.jsp?ProposalContNo="+prtNo ;
     //showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:400px;dialogHeight:200px");
  
	 window.open("./CancelContMain.jsp?ProposalContNo="+prtNo, "", "location=no,status:no;help:0;close:0;dialogWidth:400px;dialogHeight:200px");      
	 
	 //window.open("./ContInputNoScanMain.jsp?LoadFlag=3&prtNo="+prtNo+"&ManageCom="+ManageCom+"&NoType="+NoType+"", "", "location=no");       
   }else {
	    alert("����ѡ��һ����¼��Ȼ����е��ճ�����");      
	    return ;			   			    			 
   } 
 }
 //���ճ�������
function afterCancelDaySubmit(){
 showInfo.close();
  
  if( FlagStr == "Fail" ){//ʧ��
        var urlStr = "../common/jsp/MessagePage.jsp?picture=S&content=" + content;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
        showDiv(operateButton, "true");
       
  }else if(FlagStr == "Succ"){//�ɹ� 
        var urlStr = "../common/jsp/MessagePage.jsp?picture=S&content=" + content;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
        showDiv(operateButton, "true");
        //��ť�仯 ˢ��ҳ��  
        
  }
}
function easyQueryPLClick(){
	sfbutton.style.display="";
	contData.style.display="none";
	PLData.style.display="";
	newbank.style.display="none";
	
	// ��дSQL���
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
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "δ��ѯ�����" ;
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
	    	tRow = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
	    	 fm.submit(); //�ύ
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
	      checkFlag = PLGrid.getSelNo();//ѡ�еļ�¼����
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
  		if(confirm("��ȷ��Ҫ��ӡͶ�����ţ�"+prtNo+"�շ�ƾ֤ô")){ 
  		
  		
  		//	newwin=window.open("./PLContPrint.jsp?prtNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney, "", "location=no");
		//newwin.moveTo(0,0);
		//newwin.resizeTo(screen.width,screen.height);
  			
  			//fm.target= "_blank";
	  		//fm.action="./PLContPrint.jsp?prtNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney;
		  //  fm.submit();
		    window.open("../ireportPrint/printPL.jsp?contNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney);
	    }
  	}else{
  		alert("������¼�����ϴ�ӡҪ��");
  	}
  }else {
	alert("����ѡ��һ����¼��Ȼ����д�ӡ��");
  } 
}
function NewBankPrint(){
	var i = 0;
  	var checkFlag = 0;
  	var state = "0";
  	var sFeatures = "";
	  for (i=0; i<GrpGrid.mulLineCount; i++) {
	    if (GrpGrid.getSelNo(i)) { 
	      checkFlag = GrpGrid.getSelNo();//ѡ�еļ�¼����
	      break;
	    }
	  }
  if (checkFlag>0){
  	var tState = GrpGrid.getRowColData(checkFlag-1,7);
  	if(tState=='�ύ'){
  	
  	var prtNo = GrpGrid.getRowColData(checkFlag-1,1);
  	//var appntName = GrpGrid.getRowColData(checkFlag-1,12);
  	
  		if(confirm("��ȷ��Ҫ��ӡͶ�����ţ�"+prtNo+"�Զ�ת����Ȩ��ô")){
  		
  		//	newwin=window.open("./PLContPrint.jsp?prtNo="+prtNo+"&appntName="+appntName+"&payDate="+payDate+"&payMoney="+payMoney, "", "location=no");
		//newwin.moveTo(0,0);
		//newwin.resizeTo(screen.width,screen.height);
  			
  	//		fm.target= "_blank";
	//  		fm.action="./NewBankPrint.jsp?prtNo="+prtNo+"&flag=1";
	//	    fm.submit();
		    
		    window.open("../ireportPrint/print.jsp?contNo="+prtNo+"&flag=1");
		    
	    }
  	}else{
  		alert("������¼�����ϴ�ӡҪ��");
  	}
  }else {
	alert("����ѡ��һ����¼��Ȼ����д�ӡ��");
  } 
}

function exactQueryClick(){

	if(fm.CIF.value.length==0){
		
		alert("��׼��ѯ��Ҫ����CIF��");
		return;
	}
	
	newbank.style.display="";
	sfbutton.style.display="none";
	contData.style.display="";
	PLData.style.display="none";
	// ��ʼ�����
	initGrpGrid();
	var today = fm.CurrentDate.value;
 	//������Ĳ�ѯ��������У��
	/*if( verifyInput2() == false ) 
	{
		return false;
	}*/
	var showStr="���ڱ������ݣ������Ժ��Ҳ�Ҫ�޸���Ļ�ϵ�ֵ����������ҳ��";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
//	var managecom;
//	//��������<���û��ѡ����������ʹ�õ�½ʱ�ĵ�½����>
//	if(trim(fm.ManageCom.value)=="")
//	{
//		//alert("��½�������룺"+manageCom);
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
	// ��дSQL���
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
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "δ��ѯ�����" ;
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
	// ��ʼ�����
	initGrpGrid();
	var today = fm.CurrentDate.value;
 	//������Ĳ�ѯ��������У��
	/*if( verifyInput2() == false ) 
	{
		return false;
	}*/
	var showStr="���ڱ������ݣ������Ժ��Ҳ�Ҫ�޸���Ļ�ϵ�ֵ����������ҳ��";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
	fm.all("Action").value = "Refresh";
//	var managecom;
//	//��������<���û��ѡ����������ʹ�õ�½ʱ�ĵ�½����>
//	if(trim(fm.ManageCom.value)=="")
//	{
//		//alert("��½�������룺"+manageCom);
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
	// ��дSQL���
	  
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
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "δ��ѯ�����" ;
	   showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:250px;dialogHeight:150px");
		// alert( "δ��ѯ�����" );
	}
	return true;
} 
function easyQueryClick()
{
	newbank.style.display="";
	sfbutton.style.display="none";
	contData.style.display="";
	PLData.style.display="none";
	// ��ʼ�����
	initGrpGrid();
	var today = fm.CurrentDate.value;
 	//������Ĳ�ѯ��������У��
	/*if( verifyInput2() == false ) 
	{
		return false;
	}*/
	var showStr="���ڱ������ݣ������Ժ��Ҳ�Ҫ�޸���Ļ�ϵ�ֵ����������ҳ��";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
//	var managecom;
//	//��������<���û��ѡ����������ʹ�õ�½ʱ�ĵ�½����>
//	if(trim(fm.ManageCom.value)=="")
//	{
//		//alert("��½�������룺"+manageCom);
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
	// ��дSQL���
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
		var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + "δ��ѯ�����" ;
		showModalDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:350px");
	}
	return true;
} 
/**
 * ��ѯ������ϸ��Ϣ
 * @return
 */
function PolDetailQuery()
{

	var i = 0;
	var SelCount = 0;     //�ܹ�ѡ�е�����
	var SelNo = 0;        //��ѡ�е���
	var NoType = 2;       //������ѯ����
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
    if(out=='�Ǳ��пͻ�'){
    alert("���Ǳ��пͻ��ı��������ܽ��б����鿴");
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
        alert( "����ѡ��һ����¼���ٵ��������ť" );
        return;
    }
}
function RefreshQuery()
{
	var i = 0;
	var SelCount = 0;     //�ܹ�ѡ�е�����
	var SelNo = 0;        //��ѡ�е���
	//var NoType = 2;       //������ѯ����
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
        alert( "����ѡ��һ����¼���ٵ��������ť" );
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
	    	tRow = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
	 	
	 	if(confirm("��ȷ��Ҫ��ӡ��"+prtNo+"��ͬô")){ 	
	    	var sqlState="";
	    	var mySql = new SqlClass();
	        mySql.setJspName("../../app/ContInputSql.jsp");  
	        mySql.setSqlId("checkdate");
	        sqlState =mySql.getSQL();
	        var arrResult = easyExecSql(sqlState); 
	        if(arrResult==null){
	        	alert("ϵͳ����");
	        }else{
	        	var dataServer = arrResult[0][1];
	        	if(dataServer==polDate){
	        		
	        	}else{
	        		alert("ֻ�ܴ�ӡ�����ͬ");
	        		return;
	        	}
	        }
//	 	if(chekdate(polDate+" "+ckDateTime)!=0){
//	 	alert("����24Сʱ�ı��������ܽ��д�ӡ");
//	 	return;
//	 	}
	    if(flagtype!='�ѳб�'){
	    alert("δ�б��ı��������ܽ��д�ӡ");
	    return;
	    }
	 
	    PLPrint1();
	   
		}
	 	 
		}
	    else{
	        alert( "����ѡ��һ����¼���ٵ��������ť" );
	        return;
	    }

}
function RePrintQuery()
{
	var i = 0;
	var SelCount = 0;     //�ܹ�ѡ�е�����
	var SelNo = 0;        //��ѡ�е���
	//var NoType = 2;       //������ѯ����
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
//		  alert("����24Сʱ�ı��������ܽ��д�ӡ");
//		    return;
//	  }
    if(flagtype!='�ѳб�'){
    alert("δ�б��ı��������ܽ����ش�");
    return;
    }
    fm.all("Action").value = "reprint"
    fm.all("Action1").value = TransNo;
    fm.all("Action2").value = prtNo;
    if(confirm("��ȷ��Ҫ�ش�"+prtNo+"��ͬô")){ 
    	var sqlState="";
    	var mySql = new SqlClass();
        mySql.setJspName("../../app/ContInputSql.jsp");  
        mySql.setSqlId("checkdate");
        sqlState =mySql.getSQL();
        var arrResult = easyExecSql(sqlState); 
        if(arrResult==null){
        	alert("ϵͳ����");
        }else{
        	var dataServer = arrResult[0][1];
        	if(dataServer==polDate){
        		
        	}else{
        		alert("ֻ���ش����ͬ");
        		return;
        	}
        }
//    if(chekdate(polDate+" "+ckDateTime)!=0){
//  		  alert("����24Сʱ�ı��������ܽ��д�ӡ");
//  		    return;
//  	  }
      if(flagtype!='�ѳб�'){
      alert("δ�б��ı��������ܽ����ش�");
      return;
      }
   // fm.submit(); //�ύ
		submitForm();
    }
	
	
   
	}
    else{
        alert( "����ѡ��һ����¼���ٵ��������ť" );
        return;
    }
}
function AevicePrintQuery()
{
	var i = 0;
	var SelCount = 0;     //�ܹ�ѡ�е�����
	var SelNo = 0;        //��ѡ�е���
	//var NoType = 2;       //������ѯ����
	var index = 0;
	var tRow;
	for (i=0; i<GrpGrid.mulLineCount; i++) {
		if (GrpGrid.getSelNo(i)) { 
	    	tRow = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
  
  
    if(confirm("��ȷ��Ҫ��ӡ��"+prtNo+"Advice���ִô")){ 
    	var sqlState="";
    	var mySql = new SqlClass();
        mySql.setJspName("../../app/ContInputSql.jsp");  
        mySql.setSqlId("checkdate");
        sqlState =mySql.getSQL();
        var arrResult = easyExecSql(sqlState); 
        if(arrResult==null){
        	alert("ϵͳ����");
        }else{
        	var dataServer = arrResult[0][1];
        	if(dataServer==polDate){
        		
        	}else{
        		alert("���԰汾��У�鵱��ʱ��")
        		//alert("ֻ�ܴ�ӡ����Aevice���ִ");
        		//return;
        	}
        }
//      if(chekdate(polDate+" "+ckDateTime)!=0){
//  		 // alert("����24Сʱ�ı��������ܽ����ش�");
//  		  //  return;
//  	  }
      if(flagtype!='�ѳб�'){
      alert("δ�б��ı��������ܴ�ӡAevice���ִ");
      return;
      }
   	 window.open("../ireportPrint/AeviceprintPL.jsp?contNo="+prtNo+"&TransNo="+TransNo);
   	
    	//fm.action="../ireportPrint/AeviceprintPL.jsp?contNo="+prtNo+"&TransNo="+TransNo;
    	// fm.submit(); //�ύ
    	// fm.action="./AeviceContInput.jsp";
    }
	
	
   
	}
    else{
        alert( "����ѡ��һ����¼���ٵ��������ť" );
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
	      	checkFlag = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
	        	alert("ϵͳ����");
	        }else{
	        	var dataServer = arrResult[0][1];
	        	if(dataServer==polDate){
	        		
	        	}else{
	        		alert("ֻ�ܸ��Ƶ���Ͷ����");
	        		return;
	        	}
	        }
	    	var out = GrpGrid.getRowColData(checkFlag-1,13); 	
	    	insurancecom= GrpGrid.getRowColData(checkFlag-1,11); 
	    	var funcType  = GrpGrid.getRowColData(checkFlag-1,15);
	    	
	    	if(funcType=="TOPUP"){
	    		alert("TOPUP��������");
	    		return ;
	    	}
	    	if(out=='�Ǳ��пͻ�'){
	    		alert("���Ǳ��пͻ��ı�����������ѡ��");
	    		return;
	    	}
	    	if(!confirm("ȷ�ϸ���Ͷ������Ϊ "+prtNo+" ��Ͷ������?")){
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
			alert("����ѡ��һ����¼��Ȼ����и��ƣ�");
		}
	}else{
			alert("���ɸ��� ��"+content);
	}
	
}
function submitFormCopy()
{
	var mOperate='';
	var i = 0;
	var showStr="���ڸ��Ʊ����������Ժ��Ҳ�Ҫ�޸���Ļ�ϵ�ֵ����������ҳ��";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
	fm.submit(); //�ύ
}
function submitForm()
{
	var i = 0;
	var showStr="���ڱ������ݣ������Ժ��Ҳ�Ҫ�޸���Ļ�ϵ�ֵ����������ҳ��";
	var urlStr="../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	//showInfo=window.showModelessDialog(urlStr,window,"status:no;help:0;close:0;dialogWidth:550px;dialogHeight:250px");
	showInfo =ModelessDialog(urlStr,window);
	fm.submit(); //�ύ
}
//����¼���У��
function checkCif(op){
	if(!checkDate()){
		alert("��ʱ��β��ܽ��н���");
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
	      checkFlag = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
		alert("����ѡ��һ����¼��Ȼ�����¼�룡");
		
		return;
		  //	window.open("./ContInputNoScanMain.jsp?prtNo="+fm.PrtNo.value+"&ManageCom="+fm.ManageCom.value+"&NoType="+NoType+"", "", sFeatures);           			   			    			 
    } 
	
	var showStr = "���ڼ�����ݣ������Ժ��Ҳ�Ҫ�޸���Ļ�ϵ�ֵ����������ҳ��";
	var urlStr = "../common/jsp/MessagePage.jsp?picture=C&content=" + showStr ;
	showDia(showStr);
	fm.target="fraSubmit";
	fm.action="./CheckCif.jsp?option="+op+"&TransNo="+TransNo+"&CIFID="+CIFID; 
	fm.submit(); // �ύ
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
		      checkFlag = GrpGrid.getSelNo();//ѡ�еļ�¼����
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
			  	alert("ϵͳ����");
			  }else{
			  	var dataServer = arrResult1[0][1];
			  	if(dataServer==polDate){
			  		
			  		
			  	}else{
			  		alert("ֻ�ܼ���¼�뵱��Ͷ����");
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
		    if(out=='�Ǳ��пͻ�'){
		    alert("���Ǳ��пͻ��ı��������ܽ����޸�");
		    return;
		    }
		    // ��дSQL���
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
//		    	alert("�˱����Ѿ��ύ�����ܽ����޸ģ�");
//		    	return;
		    }
		    mySql = new SqlClass();
			mySql.setJspName("../../app/NoScanContInputSql.jsp");
			mySql.setSqlId("PROPOSALCONTNO");
			mySql.addPara("TransNo",TransNo);	
			strSQL = mySql.getSQL();  
			arrResult = easyExecSql(strSQL, 1, 0);
			if(arrResult==null){
				alert("�ñ�������");
				return;
			}
			if("15"==arrResult[0][2]){
				
				alert("��Ͷ�����Ѿ�ȡ�����ܼ���¼��");
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
			alert("����ѡ��һ����¼��Ȼ�����¼�룡");
			return ;
		  //	window.open("./ContInputNoScanMain.jsp?prtNo="+fm.PrtNo.value+"&ManageCom="+fm.ManageCom.value+"&NoType="+NoType+"", "", sFeatures);           			   			    			 
		 } 
	}else{
		alert("���ɼ���¼�룬"+content);
	}
	
 
}

function afterSubmit4(FlagStr, content){
	
	if (FlagStr=="Succ" ){
		closeDia();
	}else{
		 showAlert("����ʧ��" ,content);
	}
	
}
function DeleteApp()
{ 
	
	if(!checkDate()){
		alert("��ʱ��β��ܽ��н���");
		return;
	}
  var i = 0;
  var checkFlag = 0;
  var state = "0";
  var sFeatures = "";
  for (i=0; i<GrpGrid.mulLineCount; i++) {
    if (GrpGrid.getSelNo(i)) { 
      checkFlag = GrpGrid.getSelNo();//ѡ�еļ�¼����
      break;
    }
  }
  if (checkFlag>0){
  
  var mCurrentDate = fm.CurrentDate.value;
  var tMakeDate = GrpGrid.getRowColData(checkFlag-1,8);
  var tFeeFlag = GrpGrid.getRowColData(checkFlag-1,10);
  var tSubmitFlag = GrpGrid.getRowColData(checkFlag-1,6);
  var out=GrpGrid.getRowColData(checkFlag-1,13);
   if(out=='�Ǳ��пͻ�'){
     var contNo= GrpGrid.getRowColData(checkFlag-1,5);
	 if(confirm("��ȷ��Ҫȡ��Ͷ�����ţ�"+GrpGrid.getRowColData(checkFlag-1,1)+"������¼ô")){
	  	fm.action="./ContOutDeleteSave.jsp?contNo="+contNo;
	  	fm.submit();
	  
	  }
	  	return;
   }
  if(mCurrentDate!=tMakeDate&&tSubmitFlag=='1'){
  alert("����ȡ������֮������ύ������");
  return;
  }
  if(tFeeFlag=='Y'&&tSubmitFlag=='1'){
  alert("����ȡ���Ѿ��ύ��ʵʱ�ۿ����");
   return;
  }
  var transno= GrpGrid.getRowColData(checkFlag-1,5);
  if(confirm("��ȷ��Ҫȡ��Ͷ�����ţ�"+GrpGrid.getRowColData(checkFlag-1,1)+"������¼ô")){
  fm.action="./ContDeleteSave.jsp?TransNo="+transno;
  fm.submit();
  }
  }else {
	alert("����ѡ��һ����¼��Ȼ�����ȡ����");
  } 
}

/*********************************************************************
 *  ���п������뷵�ؽ������
 *  ����ֵ��  ��
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
			alert("��ѯʧ��!");
		}
	}
	if (action == "update")
	{
	if (FlagStr == "true"){
			alert("�����ɹ�!");
			cancelClick()
		}
		else
			alert("����ʧ��!");
	}
	if (action == "insert")
	{
		if (FlagStr == "true"){
			alert("�����ɹ�!");
			cancelClick()
		}
		else
			alert("����ʧ��!");
	}
	if (action == "reprint")
	{
		if (FlagStr == "true"){
			alert("�����ɹ�!");
			PLPrint1();
		}else{
			alert("����ʧ��!");
			}
	}
	if (action == "refresh")
	{
		if (FlagStr == "true"){
			var selUserNo = GrpGrid.getSelNo();
			GrpGrid.setRowColData(selUserNo-1,14,'�ѳб�');
			
			alert("�����ɹ�!");
			}
		else{
			alert("����ʧ��!");
			}
	}
}

function getBankCardNo()
{ 
	//��ȡˢ����ˢ�������п���
	return fm.all('BankCardNo').value;
}

function getBankCardPassWord()
{ 
	//��ȡ������������û�����
	return fm.all('GetPassWord').value;
}


//���й���ʱ��ѡ����һ�����幤����ϵͳ�ɽ���ʱ��08:30-20:30���ڼ���24Сʱȫ���ɽ��ס�����ʱ�䣺2018-05-16 11:39 Wednesday
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
    	if(!checkHoliday(dateHoliday)){    //����Holidayʱ���ƽ���ʱ��Ϊ��8:30-��20:30
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
    	}else{    //��Holidayʱ�����ƽ���ʱ��
    		return true;
    	}
    	return false;    //�ڲ���Holiday�Ľ���ʱ��֮�⣬������¼��
    }
}
//holiday��ѯ--Ͷ����¼�빦�ܶ��ƻ�����
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