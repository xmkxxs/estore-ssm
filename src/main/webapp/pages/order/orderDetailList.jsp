<%@ page language="java"  contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html> 
  <body>
    <table width="718" border="1" align="center">
      <tr>
        <td width="100%" align="center" valign="top" bgcolor="#FFFFFF">
	   <table width="723" height="25" border="0" cellpadding="0" cellspacing="0"
					   background="resources/images/systemImages/bg_02.jpg">
		<tr>
		  <td align="center"><strong>订单号为：${orderId }&nbsp;&nbsp;的详细信息</strong></td>
		</tr>
	   </table>
	   <br>
	   <table width="76%" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="#DCDCDC">
		<tr align="center">
		   <td width="26%" height="25">用户账号</td>
		   <td width="22%" bgcolor="#FFFFFF">${order.name}</td>
		   <td width="26%">用户姓名</td>
		   <td width="22%" bgcolor="#FFFFFF">${order.realName}</td>
		</tr>
		<tr align="center">
		    <td height="25">送货电话</td>
		    <td bgcolor="#FFFFFF">${order.mobile}</td>
		    <td>送货地址</td>
		    <td bgcolor="#FFFFFF">${order.address}</td>
		</tr>
		<tr align="center">
		    <td height="25">付款方式</td>
		    <td bgcolor="#FFFFFF">${order.paymentMode}</td>
		    <td>运送方式	</td>
		    <td bgcolor="#FFFFFF">${order.deliveryMethod}</td>
		</tr>
		<tr align="center">
		    <td height="25">备注信息</td>
		    <td bgcolor="#FFFFFF">${order.memo}</td>
		    <td>订货时间	</td>
		    <td bgcolor="#FFFFFF">${order.createTime} </td>
		</tr>
	     </table>
	    <br>
		<hr align="center" size="3" width="76%" color="brown" noshade/>
                <strong>商品详细信息</strong>
	    <br><br>
		<table width="74%" border="1" cellpadding="1" cellspacing="1"
						bordercolor="#FFFFFF" bgcolor="#DCDCDC">
		    <tr>
			<td><div align="center">商品名称</div></td>
			<td><div align="center">商品数量</div></td>
			<td><div align="center">商品价格</div></td>
		    </tr>
		    
		    <c:set value="0" var="sum" />
		     <c:forEach items="${orderItem }" var="stu">
		    <tr bgcolor="#FFFFFF">
			<td>  <div align="center">${stu.productName }</div></td>
			<td>  <div align="center">${stu.amount }</div></td>
			<td><div align="center">${stu.productPrice }元</div></td>
		     </tr>
		    	<c:set value="${sum + stu.productPrice}" var="sum" />
		     </c:forEach>
		</table>
		<br/><br/><br/><br/>
                <table width="20%" border="0" align="center">
		     <tr>
			<td align="right"><font color="red" >合计金额:</font></td>
			<td align="left"> ${sum}</td>
		     </tr>
		    <tr>
			<td align="right"><font color="red" >发货状态:</font></td>
			<td align="left">${stu.deliverySign==1?'出货':'未出货' }</td>
		    </tr>
		    <tr>
			<td align="right" colspan="2"><a href=""><font color="blue" >返回</font></a></td>
		    </tr>
		</table>
	  </td>
      </tr>
    </table>
  </body>
</html>
