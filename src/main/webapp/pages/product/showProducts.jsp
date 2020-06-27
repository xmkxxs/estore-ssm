<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<c:if test="${!empty message}">
	<script>
		alert('${message}');
	</script>
</c:if>
<body>
	<!-- 商品展示的logo -->
	<div align="left">
		<img src="resources/images/systemImages/fg_right03.jpg">
	</div>
	<table border="1" width="718">
		<!-------------------------- 显示查询结果 ---------------------------------------------------->
		<c:if test="${fn:length(productList) == 0 }">
			<tr>
				<td><font color="red">对不起，找不到符合条件的商品！</font></td>
			</tr>
		</c:if>
		<c:forEach items="${requestScope.productList }" var="product">
			<tr>
				<td align="center" width="40%"><img width="110" height="100"
					src="resources/images/productImages/${product.picture }" /></td>
				<td>
					<div>商品：${product.name }</div> <c:choose>
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
					<div>简介：${product.description }</div> <c:choose>
						<c:when test="${empty sessionScope.user }">
							<div>
								<font color="red">对不起，登录后才能查看详细信息 </font>
							</div>
						</c:when>
						<c:otherwise>
							<a href = "javascript:showProductById('${product.id }')">查看详细信息</a>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="2">
				<!-- 分页导航条，上一页，下一页等超链接 -->
				<table width="715">
					<tr>
						<td>共${param.maxPageNum }页</td>
						<td>共${param.totalRecords }条记录</td>
						<td>当前为第${param.pageNum }页</td>
						<c:if test="${param.pageNum < param.maxPageNum }">
							<td><a
								href="javascript:nextAndPrevious('${param.pageNum + 1 }',
																	'${param.totalRecords }',
																	'${param.maxPageNum }',
																	'${param.search }');">下一页</a></td>
						</c:if>
						<c:if test="${param.pageNum > 1}">
							<td><a
								href="javascript:nextAndPrevious('${param.pageNum - 1 }',
																	'${param.totalRecords }',
																	'${param.maxPageNum }',
																	'${param.search }');">上一页</a></td>
						</c:if>
					</tr>
				</table>
			</td>
		</tr>
		<!-------------------------- 显示查询结果结束 ---------------------------------------------------->
	</table>
</body>
</html>
