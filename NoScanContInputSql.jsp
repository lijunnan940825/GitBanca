<%@page contentType="text/html;charset=GBK"%>
<%@include file="../common/easyQueryVer3/EasyQueryFunc.jsp"%>
<%
	//程序名称：.jsp
	//程序功能：sql编辑页面模版
	//          SQLID和SQL是保留字
	//创建日期：YYYY-MM-DD
	//创建人  ：XXX
%>
<%
	//必须在以下部分编辑SQL 
	if (SQLID.equals("NoScanContInputSql_0")) {
		SQL = "select * from (select PROPOSALCONTNO aa,ManageCom bb ,PolApplyDate cc ,Operator dd,"
				+ "transno ee ,cardflag ff ,GRPCONTNO gg ,appntname hh ,decode(agenttype,'N','线下扣款','P','批量扣款','Y','实时扣款') ii,agenttype jj,insurancecom kk,a.appntname mm,'本行客户' nn,decode"
				+"(a.appflag,'15','已取消','16','过期未提交','05','已提交 ','02','已提交','01','未提交','12','未提交','00','未提交','14','未提交','13','未提交','03','未提交','c1','未提交','t1','已打印','已提交') oo,EXECUTECOM zz ,decode(EXECUTECOM,'CCICHM101','财产险','TOPUP','投连追加','传统寿险')from lccont  a "
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
			+ "transno ee ,cardflag ff ,GRPCONTNO gg ,appntname hh ,decode(agenttype,'N','线下扣款','P','批量扣款','Y','实时扣款') ii,agenttype jj,insurancecom kk,a.appntname mm,'本行客户' nn,decode"
			+"(a.PRINTFLAG,'','未承保','未承保','未承保','已承保','已承保') oo,EXECUTECOM zz ,decode(EXECUTECOM,'CCICHM101','财产险','TOPUP','投连追加','传统寿险'),ManageCom bb,MakeTime mt from lccont  a "
			+ "where a.forceUWReason is null and appflag not in('15','16','01','12','00','14','13','03','c1') and ";
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
			+ "transno ee ,cardflag ff ,GRPCONTNO gg ,appntname hh ,decode(agenttype,'N','线下扣款','P','批量扣款','Y','实时扣款') ii,agenttype jj,insurancecom kk,a.appntname mm,'本行客户' nn,decode"
			+"(a.appflag,'15','已取消','16','过期未提交','05','已提交 ','02','已提交','01','未提交','12','未提交','00','未提交','00','未提交','14','未提交','13','未提交','03','未提交','c1','未提交','t1','已打印','已提交') oo ,EXECUTECOM zz ,decode(EXECUTECOM,'CCICHM101','财产险','TOPUP','投连追加','传统寿险')  from lccont  a "
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
	//当日撤单  查询保单的状态 只有是05 签单状态的保单才能撤单
	if (SQLID.equals("NoScanContInputSql_2")) {
		SQL = "select appflag from lccont "
				+ "where  prtno ='?prtNo?' and TransNo='TransNo'";
	}
	if (SQLID.equals("ContInputSql_confirmDate"))//查询确认承保的日期
	{
		SQL = "select modifydate from PLAccountInsuredDetail where PROPOSALNO ='?ProposalContNo?'";
	}
	if (SQLID.equals("Sql_PL"))//查询客户经理本人录单代收付
	{
		SQL = "select a.name,b.username,c.clientname,c.prtno,decode((select f.dealtype from plfrominsuredcomtobank f where f.serialno=c.serialno),'S','代收','F','代付'),decode(c.dealtype,'0','续期保费','1','养老年金','2','首期保费','3','理赔给付','4','保全收费或付费','5','生存金','6','红利分红'),c.paymoney/100,decode((select sum(prem) from lcpol where prtno = d.prtno),'','没有录入',(select sum(prem) from lcpol where prtno = d.prtno)),d.polapplydate,c.makedate,c.standbyflag,(select e.codename from ldcode e where trim(e.code)=d.insurancecom and e.codetype = 'agent'),c.payresult,(select f.dealtype from plfrominsuredcomtobank f where f.serialno=c.serialno) from ldcom a,lduser b,plfrominsuredcomtobankdetail c ,lccont d "
				+ " where c.prtno=d.prtno and a.comcode=d.managecom and b.usercode=d.agentcode and   d.operator ='?Operator?'   "
				+ getWherePart(request, " d.polapplydate", "InputDate",
						"=")
				+ getWherePart(request, " d.prtno", "PrtNo")
				+ " order by c.makedate desc ";
	}
	if (SQLID.equals("Sql_NewBankPrint")) {//通过patNo查询自动转账授权书的基本信息
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
