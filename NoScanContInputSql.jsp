<%@page contentType="text/html;charset=GBK"%>
<%@include file="../common/easyQueryVer3/EasyQueryFunc.jsp"%>
<%
	//�������ƣ�.jsp
	//�����ܣ�sql�༭ҳ��ģ��
	//          SQLID��SQL�Ǳ�����
	//�������ڣ�YYYY-MM-DD
	//������  ��XXX
%>
<%
	//���������²��ֱ༭SQL 
	if (SQLID.equals("NoScanContInputSql_0")) {
		SQL = "select * from (select PROPOSALCONTNO aa,ManageCom bb ,PolApplyDate cc ,Operator dd,"
				+ "transno ee ,cardflag ff ,GRPCONTNO gg ,appntname hh ,decode(agenttype,'N','���¿ۿ�','P','�����ۿ�','Y','ʵʱ�ۿ�') ii,agenttype jj,insurancecom kk,a.appntname mm,'���пͻ�' nn,decode"
				+"(a.appflag,'15','��ȡ��','16','����δ�ύ','05','���ύ ','02','���ύ','01','δ�ύ','12','δ�ύ','00','δ�ύ','14','δ�ύ','13','δ�ύ','03','δ�ύ','c1','δ�ύ','t1','�Ѵ�ӡ','���ύ') oo,EXECUTECOM zz ,decode(EXECUTECOM,'CCICHM101','�Ʋ���','TOPUP','Ͷ��׷��','��ͳ����')from lccont  a "
				+ "where a.forceUWReason is null and";
		//+ "where (a.forceUWReason != 'S' or a.forceUWReason is null ) and";
		//System.out.println(request.getParameter("InputDate"));
		if(request.getAttribute("PrtNo".toUpperCase())==null
				&&request.getAttribute( "CIF".toUpperCase())==null
				&&request.getAttribute( "FinacleTranNo".toUpperCase())==null){
			System.out.println(request.getParameter("InputDate")+"12321312312");
			SQL= SQL+ " operator ='?Operator?'  ";
		}else{
			SQL= SQL+ " 1=1 ";
		}
	
		SQL= SQL+ getWherePart(request, "PROPOSALCONTNO", "PrtNo",
						"like")
				+ getWherePart(request, "GRPCONTNO", "CIF")
				+ getWherePart(request, "AGENTBANKCODE", "FinacleTranNo")
				+ getWherePart(request, "to_char(PolApplyDate,'YYYY-MM-DD')", "InputDate")
				+ " ) order by ee desc";

	}
if (SQLID.equals("NoAdviceContInputSql_0")) {
	SQL = "select * from (select PROPOSALCONTNO aa,AGENTBANKCODE pp ,PolApplyDate cc ,Operator dd,"
			+ "transno ee ,cardflag ff ,GRPCONTNO gg ,appntname hh ,decode(agenttype,'N','���¿ۿ�','P','�����ۿ�','Y','ʵʱ�ۿ�') ii,agenttype jj,insurancecom kk,a.appntname mm,'���пͻ�' nn,decode"
			+"(a.PRINTFLAG,'','δ�б�','δ�б�','δ�б�','�ѳб�','�ѳб�') oo,EXECUTECOM zz ,decode(EXECUTECOM,'CCICHM101','�Ʋ���','TOPUP','Ͷ��׷��','��ͳ����'),ManageCom bb,MakeTime mt from lccont  a "
			+ "where a.forceUWReason is null and";
	//+ "where (a.forceUWReason != 'S' or a.forceUWReason is null ) and";
	//System.out.println(request.getParameter("InputDate"));
	if(request.getAttribute("PrtNo".toUpperCase())==null
			&&request.getAttribute( "CIF".toUpperCase())==null
			&&request.getAttribute( "FinacleTranNo".toUpperCase())==null){
		System.out.println(request.getParameter("InputDate")+"12321312312");
		SQL= SQL+ " manageCom ='?manageCom?'  ";
	}else{
		SQL= SQL+ " manageCom ='?manageCom?'  ";
	}

	SQL= SQL+ getWherePart(request, "PROPOSALCONTNO", "PrtNo",
					"like")
			+ getWherePart(request, "GRPCONTNO", "CIF")
			+ getWherePart(request, "AGENTBANKCODE", "FinacleTranNo")
			+ getWherePart(request, "to_char(PolApplyDate,'YYYY-MM-DD')", "InputDate")
			+ " ) order by ee desc";

}

if (SQLID.equals("exactNoScanContInputSql_0")) {
	SQL = "select * from (select PROPOSALCONTNO aa,ManageCom bb ,PolApplyDate cc ,Operator dd,"
			+ "transno ee ,cardflag ff ,GRPCONTNO gg ,appntname hh ,decode(agenttype,'N','���¿ۿ�','P','�����ۿ�','Y','ʵʱ�ۿ�') ii,agenttype jj,insurancecom kk,a.appntname mm,'���пͻ�' nn,decode"
			+"(a.appflag,'15','��ȡ��','16','����δ�ύ','05','���ύ ','02','���ύ','01','δ�ύ','12','δ�ύ','00','δ�ύ','00','δ�ύ','14','δ�ύ','13','δ�ύ','03','δ�ύ','c1','δ�ύ','t1','�Ѵ�ӡ','���ύ') oo ,EXECUTECOM zz ,decode(EXECUTECOM,'CCICHM101','�Ʋ���','TOPUP','Ͷ��׷��','��ͳ����')  from lccont  a "
			+ "where  operator ='?Operator?'  "
			+ getWherePart(request, "PROPOSALCONTNO", "PrtNo",
					"like")
			+ getWherePart(request, "AGENTBANKCODE", "FinacleTranNo")
			+ getWherePart(request, "to_char(PolApplyDate,'YYYY-MM-DD')", "InputDate")
			+ " or GRPCONTNO='?GRPCONTNO?' ) order by ee desc";

}

	if (SQLID.equals("NoScanContInputSql_1")) {
		SQL = "select cardflag from lccont "
				+ "where  PROPOSALCONTNO ='?prtNo?' ";
	}
	//���ճ���  ��ѯ������״̬ ֻ����05 ǩ��״̬�ı������ܳ���
	if (SQLID.equals("NoScanContInputSql_2")) {
		SQL = "select appflag from lccont "
				+ "where  prtno ='?prtNo?' and TransNo='TransNo'";
	}
	if (SQLID.equals("ContInputSql_confirmDate"))//��ѯȷ�ϳб�������
	{
		SQL = "select modifydate from PLAccountInsuredDetail where PROPOSALNO ='?ProposalContNo?'";
	}
	if (SQLID.equals("Sql_PL"))//��ѯ�ͻ�������¼�����ո�
	{
		SQL = "select a.name,b.username,c.clientname,c.prtno,decode((select f.dealtype from plfrominsuredcomtobank f where f.serialno=c.serialno),'S','����','F','����'),decode(c.dealtype,'0','���ڱ���','1','�������','2','���ڱ���','3','�������','4','��ȫ�շѻ򸶷�','5','�����','6','�����ֺ�'),c.paymoney/100,decode((select sum(prem) from lcpol where prtno = d.prtno),'','û��¼��',(select sum(prem) from lcpol where prtno = d.prtno)),d.polapplydate,c.makedate,c.standbyflag,(select e.codename from ldcode e where trim(e.code)=d.insurancecom and e.codetype = 'agent'),c.payresult,(select f.dealtype from plfrominsuredcomtobank f where f.serialno=c.serialno) from ldcom a,lduser b,plfrominsuredcomtobankdetail c ,lccont d "
				+ " where c.prtno=d.prtno and a.comcode=d.managecom and b.usercode=d.agentcode and   d.operator ='?Operator?'   "
				+ getWherePart(request, " d.polapplydate", "InputDate",
						"=")
				+ getWherePart(request, " d.prtno", "PrtNo")
				+ " order by c.makedate desc ";
	}
	if (SQLID.equals("Sql_NewBankPrint")) {//ͨ��patNo��ѯ�Զ�ת����Ȩ��Ļ�����Ϣ
		SQL = "select a.appntname,a.prtno,(select codename from ldcode where codetype = 'idtype'and trim(code) = a.appntidtype) codetype,a.appntidno,"
				+ "a.newbankaccno,(select codename from ldcode where codetype = 'bank'and trim(code) = a.newbankcode) bank from lccont a";
	}
	if (SQLID.equals("PROPOSALCONTNO")) {
		SQL = "select transno,InsuranceCom,appflag from LCCont "
				+ " where   TransNo='?TransNo?'";
	}
	if (SQLID.equals("ChekDateSQL")) {
		SQL =" select floor(to_number(sysdate-to_date('?ckDateTime?','yyyy-mm-dd hh24:mi:ss'))*24) as spanHours from dual ";
				
	}
%>
<%
	System.out.println("InputSQL===:" + SQL);
	request.setAttribute("EASYQUERYSQL", SQL);
%>
