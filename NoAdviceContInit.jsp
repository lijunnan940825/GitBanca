<%@page contentType="text/html;charset=GBK" %>
<%
//程序名称：ScanContInit.jsp
//程序功能：个单新契约扫描件保单录入
//创建日期：2004-12-22 11:10:36
//创建人  ：HYQ
//更新记录：  更新人    更新日期     更新原因/内容
%>
<%@page import="com.sinosoft.lis.pubfun.*"%> 
<%
     String gToday = PubFun.getCurrentDate(); //添加页面控件的初始化。    
%>

<script language="JavaScript">
// 输入框的初始化（单记录部分）
function initInpBox()
{
	try
	{
		// 保单查询条件
		fm.all('CurrentDate').value = '<%=gToday%>';
		fm.all('PrtNo').value = '';
		//ManageCom初始化成登录管理机构，且不允许修改
		fm.all('ManageCom').value = "";
		//showOneCodeName('comcodequery','ManageCom','ManageName');
		//showOneCodeName("station","ManageCom","ManageComName");
		//申请日期默认当天，但可以修改
		fm.all('InputDate').value ="";
		//fm.all('BankCardNo').value ="";
		//fm.all('GetPassWord').value =""; 
	}
	catch(ex)
	{
		alert("在GroupUWAutoInit.jsp-->InitInpBox函数中发生异常:初始化界面错误!");
	}
}

function initForm()
{
	try
	{	
		//initTr();
		initInpBox();
		initGrpGrid();
		initPLGrid()
	}
	catch(re)
	{
		alert("ProposalQueryInit.jsp-->InitForm函数中发生异常:初始化界面错误!");
	}
}

// 保单信息列表的初始化
function initGrpGrid()
{
	var iArray = new Array();
	try
	{
		iArray[0]=new Array();
		iArray[0][0]="序号";
		iArray[0][1]="30px";
		iArray[0][2]=10;
		iArray[0][3]=0;

		iArray[1]=new Array();
		iArray[1][0]="投保单号";
		iArray[1][1]="150px";
		iArray[1][2]=170;
		iArray[1][3]=0;

	//	iArray[2]=new Array();
	//	iArray[2][0]="FINACLE流水号";
	//	iArray[2][1]="150px";
	//	iArray[2][2]=170;
	//	iArray[3][3]=0;
	
		
		iArray[2]=new Array();
		iArray[2][0]="FINACLE流水号";
		iArray[2][1]="100px";
		iArray[2][2]=100;
		iArray[2][3]=0;

		iArray[3]=new Array();
		iArray[3][0]="投保日期";
		iArray[3][1]="100px";
		iArray[3][2]=200;
		iArray[3][3]=0;

		iArray[4]=new Array();
		iArray[4][0]="申请人";         	
		iArray[4][1]="10px";           
		iArray[4][2]=100;            	
		iArray[4][3]=3;   
		
		
		iArray[5]=new Array();
		iArray[5][0]="保单序号";         	
		iArray[5][1]="10px";           
		iArray[5][2]=150;            	
		iArray[5][3]=3;
		
		iArray[6]=new Array();
		iArray[6][0]="提交标志";         	
		iArray[6][1]="10px";           
		iArray[6][2]=100;            	
		iArray[6][3]=3;
		
		iArray[7]=new Array();
		iArray[7][0]="投保人CIF";         	
		iArray[7][1]="150px";           
		iArray[7][2]=150;            	
		iArray[7][3]=0;
		
		iArray[8]=new Array();
		iArray[8][0]="投保人姓名 ";         	
		iArray[8][1]="100px";           
		iArray[8][2]=100;            	
		iArray[8][3]=0; 
		
		iArray[9]=new Array();
		iArray[9][0]="扣款方式";         	
		iArray[9][1]="80px";           
		iArray[9][2]=100;            	
		iArray[9][3]=3; 
		
		iArray[10]=new Array();
		iArray[10][0]="扣款方式标志";         	
		iArray[10][1]="10px";           
		iArray[10][2]=100;            	
		iArray[10][3]=3; 
		
		iArray[11]=new Array();
		iArray[11][0]="保险公司";         	
		iArray[11][1]="180px";           
		iArray[11][2]=100;            	
		iArray[11][3]=0; 
		
		iArray[12]=new Array();
		iArray[12][0]="客户姓名";         	
		iArray[12][1]="80px";           
		iArray[12][2]=100;            	
		iArray[12][3]=3; 
		
		/*iArray[13]=new Array();
		iArray[13][0]="保险产品";         	
		iArray[13][1]="10px";           
		iArray[13][2]=100;            	
		iArray[13][3]=3; */   
		        	
		iArray[13]=new Array();
		iArray[13][0]="是否本行客户";         	
		iArray[13][1]="80px";           
		iArray[13][2]=100;            	
		iArray[13][3]=3; 
		
		iArray[14]=new Array();
		iArray[14][0]="投保单状态";         	
		iArray[14][1]="80px";           
		iArray[14][2]=100;            	
		iArray[14][3]=0; 

		iArray[15]=new Array();
		iArray[15][0]="交易类型";         	
		iArray[15][1]="0px";           
		iArray[15][2]=100;            	
		iArray[15][3]=3; 

		iArray[16]=new Array();
		iArray[16][0]="交易类型";         	
		iArray[16][1]="100px";           
		iArray[16][2]=100;            	
		iArray[16][3]=3; 
		
		iArray[17]=new Array();
		iArray[17][0]="银行网点";         	
		iArray[17][1]="100px";           
		iArray[17][2]=100;            	
		iArray[17][3]=3; 

		GrpGrid = new MulLineEnter( "fm" , "GrpGrid" );
		//这些属性必须在loadMulLine前
		GrpGrid.mulLineCount = 0;
		GrpGrid.displayTitle = 1;
		GrpGrid.locked = 1;
		GrpGrid.canSel = 1;
		GrpGrid.canChk = 0;
		GrpGrid.hiddenSubtraction = 1;
		GrpGrid.hiddenPlus = 1;
		GrpGrid.loadMulLine(iArray);
	}
	catch(ex)
	{
		alert(ex);
	}
}
function initPLGrid()
{
    var iArray = new Array();
      try
      {
      iArray[0]=new Array();
      iArray[0][0]="序号";         			//列名（此列为顺序号，列名无意义，而且不显示）
      iArray[0][1]="30px";            		//列宽
      iArray[0][2]=20;            			//列最大值
      iArray[0][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[1]=new Array();
      iArray[1][0]="机构名称";         			//列名（此列为顺序号，列名无意义，而且不显示）
      iArray[1][1]="80px";            		//列宽
      iArray[1][2]=20;            			//列最大值
      iArray[1][3]=0;              			//是否允许输入,1表示允许，0表示不允许

      iArray[2]=new Array();
      iArray[2][0]="客户经理";         		//列名
      iArray[2][1]="60px";            		//列宽
      iArray[2][2]=100;            			//列最大值
      iArray[2][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[3]=new Array();
      iArray[3][0]="客户姓名";         			//列名（此列为顺序号，列名无意义，而且不显示）
      iArray[3][1]="60px";            		//列宽
      iArray[3][2]=20;            			//列最大值
      iArray[3][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[4]=new Array();
      iArray[4][0]="投保单号";         		//列名（此列为顺序号，列名无意义，而且不显示）
      iArray[4][1]="80px";            		//列宽
      iArray[4][2]=20;            			//列最大值
      iArray[4][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[5]=new Array();
      iArray[5][0]="代收/付";         		//列名
      iArray[5][1]="45px";            		//列宽
      iArray[5][2]=100;            			//列最大值
      iArray[5][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[6]=new Array();
      iArray[6][0]="转账类型";         		//列名
      iArray[6][1]="60px";            		//列宽
      iArray[6][2]=100;            			//列最大值
      iArray[6][3]=0;              			//是否允许输入,1表示允许，0表示不允许

      iArray[7]=new Array();
      iArray[7][0]="转账金额";         		//列名
      iArray[7][1]="60px";            		//列宽
      iArray[7][2]=100;            			//列最大值
      iArray[7][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[8]=new Array();
      iArray[8][0]="BASS录入金额";         		//列名
      iArray[8][1]="80px";            		//列宽
      iArray[8][2]=100;            			//列最大值
      iArray[8][3]=0;              			//是否允许输入,1表示允许，0表示不允许

      iArray[9]=new Array();
      iArray[9][0]="投保日期";         		//列名
      iArray[9][1]="60px";            		//列宽
      iArray[9][2]=0;            			//列最大值
      iArray[9][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[10]=new Array();
      iArray[10][0]="转账日期";         		//列名
      iArray[10][1]="60px";            		//列宽
      iArray[10][2]=0;            			//列最大值
      iArray[10][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[11]=new Array();
      iArray[11][0]="扣款结果";         		//列名
      iArray[11][1]="120px";            		//列宽
      iArray[11][2]=0;            			//列最大值
      iArray[11][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[12]=new Array();
      iArray[12][0]="保险公司";         		//列名
      iArray[12][1]="150px";            		//列宽
      iArray[12][2]=0;            			//列最大值
      iArray[12][3]=0;              			//是否允许输入,1表示允许，0表示不允许
      
      
      iArray[13]=new Array();
      iArray[13][0]="扣款结果";         		//列名
      iArray[13][1]="50px";            		//列宽
      iArray[13][2]=0;            			//列最大值
      iArray[13][3]=3;              			//是否允许输入,1表示允许，0表示不允许
      
      iArray[14]=new Array();
      iArray[14][0]="代收/付";         		//列名
      iArray[14][1]="50px";            		//列宽
      iArray[14][2]=0;            			//列最大值
      iArray[14][3]=3;              			//是否允许输入,1表示允许，0表示不允许
      

      PLGrid = new MulLineEnter( "fm" , "PLGrid" );
      PLGrid.displayTitle = 1;
      PLGrid.locked = 1;
      PLGrid.mulLineCount = 0;
      PLGrid.hiddenPlus=1;
      PLGrid.hiddenSubtraction=1;
      PLGrid.canSel=1;
      PLGrid.canChk=0;
      PLGrid.loadMulLine(iArray);
      }
      catch(ex)
      {
        alert(ex);
      }
}
</script>