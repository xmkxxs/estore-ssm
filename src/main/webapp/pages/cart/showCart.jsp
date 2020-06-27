<%@ page language="java"    contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
  <head>       
  
     <script>
       var oldQuantity;
       oldQuantity="";
       function modifyQuantity(cartItemId,newQuantity){
    	   if(newQuantity!=oldQuantity){
    		   $.post("cart/modifyQuantity.do",
    				   {cartItemId:cartItemId,quantity:newQuantity},
    				   function(responseText){
    					   $("#content").html(responseText);
    				   }
    		   );
    		   oldQuantity=newQuantity;
    	   }
       }
       
       function clear(){
    	   if(confirm("你确定要清空购物车吗？")){
    		   $.post("cart/clearCart.do",
    				   function(responseText){
    			   $("#content").html(responseText); 
    		   	}
    		   );
    	   }
       }
       
     </script>
  </head>  
  <c:if test="${!empty orderId}">
  		<script>
  			alert('提交订单成功，订单号是：${orderId}');
  		</script>
  </c:if>
  
  <body>
     <table width="718" border="1" align="center">
	<tr>
	   <td width="100%" valign="top" bgcolor="#FFFFFF" align="center">
               <br><br>
	       <strong>我的购物车</strong>	<div align="center"><br></div>
	       
	       <c:if test="${empty list}">
                     	
                    <div align="center" style="color:red">你真的很小气</div>
                     	
           </c:if>
	       
	       
	       <c:if test="${!empty list}">
		       <form method="post"  name="cartForm" id="cartForm" onSubmit="return false;">
			    <table width="92%"  border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" 
	                           bordercolordark="#819BBC" bordercolorlight="#FFFFFF">
	                     <tr>
	                       <td width="16%" height="28"><div align="center">序号</div></td>
	                       <td width="23%"><div align="center">商品的名称</div></td>
	                       <td width="22%"><div align="center">商品价格</div></td>
	                       <td width="22%"><div align="center">商品数量</div></td>
	                       <td width="17%"><div align="center">总金额</div></td>
	                     </tr>
	                     
	                     <c:forEach items="${list }" var="stu">
		                     <tr>
		                        <td height="28"><div align="center">${stu.cartItemId }</div></td>
		                        <td><div align="center">${stu.productName }</div></td>
		                        <td><div align="center">${stu.price }</div></td>
		                        <td><div align="center"><input name="num${i}" size="7" type="text"  
		                                                              value="${stu.quantity }" onKeyUp="modifyQuantity('${stu.cartItemId}',this.value)"></div></td>
		                        <td><div align="center">${stu.quantity * stu.price}元</div></td>
		                     </tr> 
	                      </c:forEach>
	                  </table>               
	              </form>
	              <table width="100%" height="52" border="0" align="center" cellpadding="0" cellspacing="0">
			      <tr align="center" valign="middle">
				<td height="10">&nbsp;		</td>
			        <td width="24%" height="10" colspan="-3" align="left">&nbsp;</td>
			      </tr>
			      <tr align="center" valign="middle">
			        <td height="21" class="tableBorder_B1">&nbsp;</td>
			        <td height="21" colspan="-3" align="left" >合计总金额：${allPrice }</td>
			      </tr>
			      <tr align="center" valign="middle">
			        <td height="21" colspan="2"> 
	                            <a href="">继续购物</a> | <a href="javascript:settlement('${allPrice }');">去收银台结账</a> | <a href="javascript:clear();">清空购物车</a>
	                        </td></tr>
		    </table>
	         </td>
	        </tr>
	     </table>
     </c:if>
  </body>
</html>
