<%@page contentType="text/html;charset=GBK" %>
<%
//�������ƣ�ScanContInit.jsp
//�����ܣ���������Լɨ�������¼��
//�������ڣ�2004-12-22 11:10:36
//������  ��HYQ
//���¼�¼��  ������    ��������     ����ԭ��/����
%>
<%@page import="com.sinosoft.lis.pubfun.*"%> 
<%
     String gToday = PubFun.getCurrentDate(); //���ҳ��ؼ��ĳ�ʼ����    
%>

<script language="JavaScript">
// �����ĳ�ʼ��������¼���֣�
function initInpBox()
{
	try
	{
		// ������ѯ����
		fm.all('CurrentDate').value = '<%=gToday%>';
		fm.all('PrtNo').value = '';
		//ManageCom��ʼ���ɵ�¼����������Ҳ������޸�
		fm.all('ManageCom').value = "";
		//showOneCodeName('comcodequery','ManageCom','ManageName');
		//showOneCodeName("station","ManageCom","ManageComName");
		//��������Ĭ�ϵ��죬�������޸�
		fm.all('InputDate').value ="";
		//fm.all('BankCardNo').value ="";
		//fm.all('GetPassWord').value =""; 
	}
	catch(ex)
	{
		alert("��GroupUWAutoInit.jsp-->InitInpBox�����з����쳣:��ʼ���������!");
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
		alert("ProposalQueryInit.jsp-->InitForm�����з����쳣:��ʼ���������!");
	}
}

// ������Ϣ�б�ĳ�ʼ��
function initGrpGrid()
{
	var iArray = new Array();
	try
	{
		iArray[0]=new Array();
		iArray[0][0]="���";
		iArray[0][1]="30px";
		iArray[0][2]=10;
		iArray[0][3]=0;

		iArray[1]=new Array();
		iArray[1][0]="Ͷ������";
		iArray[1][1]="150px";
		iArray[1][2]=170;
		iArray[1][3]=0;

	//	iArray[2]=new Array();
	//	iArray[2][0]="FINACLE��ˮ��";
	//	iArray[2][1]="150px";
	//	iArray[2][2]=170;
	//	iArray[3][3]=0;
	
		
		iArray[2]=new Array();
		iArray[2][0]="FINACLE��ˮ��";
		iArray[2][1]="100px";
		iArray[2][2]=100;
		iArray[2][3]=0;

		iArray[3]=new Array();
		iArray[3][0]="Ͷ������";
		iArray[3][1]="100px";
		iArray[3][2]=200;
		iArray[3][3]=0;

		iArray[4]=new Array();
		iArray[4][0]="������";         	
		iArray[4][1]="10px";           
		iArray[4][2]=100;            	
		iArray[4][3]=3;   
		
		
		iArray[5]=new Array();
		iArray[5][0]="�������";         	
		iArray[5][1]="10px";           
		iArray[5][2]=150;            	
		iArray[5][3]=3;
		
		iArray[6]=new Array();
		iArray[6][0]="�ύ��־";         	
		iArray[6][1]="10px";           
		iArray[6][2]=100;            	
		iArray[6][3]=3;
		
		iArray[7]=new Array();
		iArray[7][0]="Ͷ����CIF";         	
		iArray[7][1]="150px";           
		iArray[7][2]=150;            	
		iArray[7][3]=0;
		
		iArray[8]=new Array();
		iArray[8][0]="Ͷ�������� ";         	
		iArray[8][1]="100px";           
		iArray[8][2]=100;            	
		iArray[8][3]=0; 
		
		iArray[9]=new Array();
		iArray[9][0]="�ۿʽ";         	
		iArray[9][1]="80px";           
		iArray[9][2]=100;            	
		iArray[9][3]=3; 
		
		iArray[10]=new Array();
		iArray[10][0]="�ۿʽ��־";         	
		iArray[10][1]="10px";           
		iArray[10][2]=100;            	
		iArray[10][3]=3; 
		
		iArray[11]=new Array();
		iArray[11][0]="���չ�˾";         	
		iArray[11][1]="180px";           
		iArray[11][2]=100;            	
		iArray[11][3]=0; 
		
		iArray[12]=new Array();
		iArray[12][0]="�ͻ�����";         	
		iArray[12][1]="80px";           
		iArray[12][2]=100;            	
		iArray[12][3]=3; 
		
		/*iArray[13]=new Array();
		iArray[13][0]="���ղ�Ʒ";         	
		iArray[13][1]="10px";           
		iArray[13][2]=100;            	
		iArray[13][3]=3; */   
		        	
		iArray[13]=new Array();
		iArray[13][0]="�Ƿ��пͻ�";         	
		iArray[13][1]="80px";           
		iArray[13][2]=100;            	
		iArray[13][3]=3; 
		
		iArray[14]=new Array();
		iArray[14][0]="Ͷ����״̬";         	
		iArray[14][1]="80px";           
		iArray[14][2]=100;            	
		iArray[14][3]=0; 

		iArray[15]=new Array();
		iArray[15][0]="��������";         	
		iArray[15][1]="0px";           
		iArray[15][2]=100;            	
		iArray[15][3]=3; 

		iArray[16]=new Array();
		iArray[16][0]="��������";         	
		iArray[16][1]="100px";           
		iArray[16][2]=100;            	
		iArray[16][3]=3; 
		
		iArray[17]=new Array();
		iArray[17][0]="��������";         	
		iArray[17][1]="100px";           
		iArray[17][2]=100;            	
		iArray[17][3]=3; 

		GrpGrid = new MulLineEnter( "fm" , "GrpGrid" );
		//��Щ���Ա�����loadMulLineǰ
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
      iArray[0][0]="���";         			//����������Ϊ˳��ţ����������壬���Ҳ���ʾ��
      iArray[0][1]="30px";            		//�п�
      iArray[0][2]=20;            			//�����ֵ
      iArray[0][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[1]=new Array();
      iArray[1][0]="��������";         			//����������Ϊ˳��ţ����������壬���Ҳ���ʾ��
      iArray[1][1]="80px";            		//�п�
      iArray[1][2]=20;            			//�����ֵ
      iArray[1][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������

      iArray[2]=new Array();
      iArray[2][0]="�ͻ�����";         		//����
      iArray[2][1]="60px";            		//�п�
      iArray[2][2]=100;            			//�����ֵ
      iArray[2][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[3]=new Array();
      iArray[3][0]="�ͻ�����";         			//����������Ϊ˳��ţ����������壬���Ҳ���ʾ��
      iArray[3][1]="60px";            		//�п�
      iArray[3][2]=20;            			//�����ֵ
      iArray[3][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[4]=new Array();
      iArray[4][0]="Ͷ������";         		//����������Ϊ˳��ţ����������壬���Ҳ���ʾ��
      iArray[4][1]="80px";            		//�п�
      iArray[4][2]=20;            			//�����ֵ
      iArray[4][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[5]=new Array();
      iArray[5][0]="����/��";         		//����
      iArray[5][1]="45px";            		//�п�
      iArray[5][2]=100;            			//�����ֵ
      iArray[5][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[6]=new Array();
      iArray[6][0]="ת������";         		//����
      iArray[6][1]="60px";            		//�п�
      iArray[6][2]=100;            			//�����ֵ
      iArray[6][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������

      iArray[7]=new Array();
      iArray[7][0]="ת�˽��";         		//����
      iArray[7][1]="60px";            		//�п�
      iArray[7][2]=100;            			//�����ֵ
      iArray[7][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[8]=new Array();
      iArray[8][0]="BASS¼����";         		//����
      iArray[8][1]="80px";            		//�п�
      iArray[8][2]=100;            			//�����ֵ
      iArray[8][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������

      iArray[9]=new Array();
      iArray[9][0]="Ͷ������";         		//����
      iArray[9][1]="60px";            		//�п�
      iArray[9][2]=0;            			//�����ֵ
      iArray[9][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[10]=new Array();
      iArray[10][0]="ת������";         		//����
      iArray[10][1]="60px";            		//�п�
      iArray[10][2]=0;            			//�����ֵ
      iArray[10][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[11]=new Array();
      iArray[11][0]="�ۿ���";         		//����
      iArray[11][1]="120px";            		//�п�
      iArray[11][2]=0;            			//�����ֵ
      iArray[11][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[12]=new Array();
      iArray[12][0]="���չ�˾";         		//����
      iArray[12][1]="150px";            		//�п�
      iArray[12][2]=0;            			//�����ֵ
      iArray[12][3]=0;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      
      iArray[13]=new Array();
      iArray[13][0]="�ۿ���";         		//����
      iArray[13][1]="50px";            		//�п�
      iArray[13][2]=0;            			//�����ֵ
      iArray[13][3]=3;              			//�Ƿ���������,1��ʾ����0��ʾ������
      
      iArray[14]=new Array();
      iArray[14][0]="����/��";         		//����
      iArray[14][1]="50px";            		//�п�
      iArray[14][2]=0;            			//�����ֵ
      iArray[14][3]=3;              			//�Ƿ���������,1��ʾ����0��ʾ������
      

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