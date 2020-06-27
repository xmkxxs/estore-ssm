<%@ page language="java"  contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <head>  
  
</head>

 
  <table width="100%" border="1"    align="center" cellpadding="0" cellspacing="0">
       <tr>
          <td width="30%"  valign="top">&nbsp;<%@include file = "leftParts/findProductsByName.jsp" %>
          </td>       
       </tr>
       <tr>
          <td width="30%"  valign="top"> 
          <c:choose>
          	<c:when test="${!empty sessionScope.user}">
          		<jsp:include page="/pages/common/leftParts/successLogin.jsp"/>
          	</c:when>
          	<c:otherwise>
          		<%@include file = "leftParts/login.jsp" %> 
          	</c:otherwise>
          </c:choose>
        </td>
        </tr>
    </table> 
 