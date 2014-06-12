<%-- 
    Document   : index
    Created on : Aug 24, 2010, 11:48:34 PM
    Author     : jeff
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="ca.jeffprice.xmltransform.XMLTransform" %>

<%@include file="/common/components/page_browser_detect.jsp" %>
<%
	String xml = request.getSession().getServletContext().getRealPath("/common/xml/price_list.xml");
	
        String xslPath = (isMSIE) ? "/av/xml/rentals_price_list_ie.xsl" : "/av/xml/rentals_price_list.xsl";
        String xsl = request.getSession().getServletContext().getRealPath(xslPath);

	XMLTransform xt = new XMLTransform();
	xt.setXml(xml);
	xt.setXsl(xsl);
	String output = xt.applyTransformation();
%>
<%@include file="components/page_header.jsp" %>
<%@include file="page/rentals.jsp" %>
<%@include file="components/page_footer.jsp" %>
