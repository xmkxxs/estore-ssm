<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<body>
	<table width="718" height="136" align="center" cellpadding="1"
		cellspacing="1" bordercolor="#FFFFFF">
		<tr>
			<td width="40%" height="80" rowspan="2" bgcolor="#FFFFFF">
				<div align="center">
					<img src="resources/images/productImages/${product.picture }"
						width="110" height="100" />
				</div>
			</td>
			<td width="58%" bgcolor="#FFFFFF">
				<div align="left">商品名称：${product.name }</div> 
				<c:choose>
					<c:when test="${product.discount == 0 }">
						<div align="left">价格:${product.marketPrice }</div>
					</c:when>
					<c:otherwise>
						<div align="left">
							原价:<font color="red"><del>${product.marketPrice }</del></font>
						</div>
						<div align="left">现价:${product.sellPrice }</div>
					</c:otherwise>
				</c:choose>
				<div align="left">简介:${product.description }</div>
				<div align="left">数量:${product.productAmount }</div> <br />
				<div>
					<a href="index.do"><font color="blue">返回</font></a>
					&nbsp;&nbsp;&nbsp;
				<c:choose>
					<c:when test="${product.productAmount > 0 }">
						<a href="javascript:addCart('${product.id }','${product.name }','${product.discount == 0?product.marketPrice:product.sellPrice }','1');">放入购物车</a>
					</c:when>
					<c:otherwise>
						<font color='red'>对不起，这个商品暂时缺货！</font>
					</c:otherwise>
				</c:choose>
					 
					
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
