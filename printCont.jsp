<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.jdom.input.DOMBuilder"%>
<%@page import="com.sinosoft.utility.XmlExportNew"%>
<%@page import="org.jdom.Document"%>
<%@page import="com.f1j.util.F1Exception"%>
<%@page import="com.f1j.ss.BookModelImpl"%>
<%@page import="java.util.*"%>
<%@page import="com.sinosoft.lis.idtype.*"%>	
<%@page import="com.sinosoft.utility.XmlExportNew,com.sinosoft.utility.TransferData,com.sinosoft.utility.VData"%>
<%@page import="com.sinosoft.utility.ExeSQL"%>

<%
	//String contNo =(String)request.getAttribute("contNo");
	String contNo =request.getParameter("contNo");
	String TransNo=request.getParameter("TransNo");//交易号
	String payDate=request.getParameter("payDate");//转账日期
	String payMoney=request.getParameter("payMoney");//转账金额
	String AgentCom =request.getParameter("AgentCom");
	System.out.println("llllllllllllllllllllllllllll开始执行打印操作");
	boolean Flag=true;
	System.out.println("<<<<<>>>>>>>>>打印合同>>>>>>>>>>>>>>>>>");
	PrintOrAdviceBL printOrAdvice = new PrintOrAdviceBL();
	//Result = printOrAdvice.FinacleStatus(prtNo);
	String content = printOrAdvice.download(contNo,response);
	System.out.println("<<<<<>>>>>>>>>content>>>>>>>>>>>>>>>>>"+content);
	 if("0".equals(content)){
		 
	 }else{
		 content="系统发生异常打印失败";
		  Flag = false;
	 }
	if(!Flag)
	{
%>
	<script language="javascript">
		alert('<%=content%>');
		window.opener = null;
		window.close();
</script>
<%
	}

%>