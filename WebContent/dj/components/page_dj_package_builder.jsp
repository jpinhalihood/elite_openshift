<%-- 
    Document   : page_dj_package_builder
    Created on : Sep 8, 2010, 9:54:51 PM
    Author     : jeff
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="ca.jeffprice.xmltransform.XMLTransform" %>
<%
	String xml = request.getSession().getServletContext().getRealPath("/common/xml/price_list.xml");
	String xsl = request.getSession().getServletContext().getRealPath("/dj/xml/dj_package_builder.xsl");

	XMLTransform xt = new XMLTransform();
	xt.setXml(xml);
	xt.setXsl(xsl);
	String output = xt.applyTransformation();
%>
<%=output%>
