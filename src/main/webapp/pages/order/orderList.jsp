<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
 
  <body>
   
   <table width="718" border="1" align="center">
	 
      <tr>
	 <!-- 第二行-->
	<td width="100%" align="center" valign="top" bgcolor="#FFFFFF">
	<br/>					
	<table width="100%" height="25" border="0" cellpadding="0"	cellspacing="0"
		background="resources/images/systemImages/bg_02.jpg">
	   <tr>
	     <td>
		<div align="center">
		    <strong>用户 ${userName } 的所有订单信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a  href="">已出货 </a>
			<a  href="">未出货 </a>									
		    </strong>
		</div>
	      </td>
          </tr>
	</table>
	<br/>
       <table width="99%" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="CCCCCC">
           <tr bgcolor="#DCDCDC">
		<td width="12%" height="25"> <div align="center">编号</div></td>
		<td width="12%"><div align="center">电 话</div></td>
		<td width="36%"><div align="center">地 址</div>	</td>
		<td width="16%"><div align="center">是否出货	</div></td>
		<td width="12%"><div align="center">订货时间	</div></td>
		<td width="12%"><div align="center">操作	</div></td>
	   </tr>
	   
	   <c:forEach items="${list }" var="stu">
	   <tr align="center" bgcolor="#FFFFFF">
		<td height="25">${stu.orderId } </td>
		<td>${stu.mobile } </td>
		<td>${stu.address } </td>
		<td>${stu.deliverySign==1?'出货':'未出货' }</td>
		<td> ${stu.createTime }</td>
		<td><a href="javascript:xiangxixinxi('${stu.orderId }');">详细信息</a></td>
	   </tr>
		</c:forEach>
				
	</table>	
      </td>
    </tr>	 
   </table>
   </body>
</html>
