<%@ page language="java"  contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>  
  <head>
     <base href="${pageContext.request.contextPath}/">
     <link rel="stylesheet" type="text/css" href="resources/css/styles.css">
     <script src="resources/js/jquery-1.12.3.min.js" type="text/javascript"></script>
     <script src="resources/js/check.js" type="text/javascript"></script>   
     <script type="text/javascript">     
        //js写在这里
        //加载主页时调用
        $(document).ready(function(){
        	showAllProducts();//调用下面的showAllProducts方法查询所有商品
        });
        
        //查询所有商品。在加载主页时，用户点“首页”时，注册成功返回调用
        function showAllProducts(){
        	$.ajax({
        		url: 'showAllProducts.do',//查询所有商品，去ProductController类中找对应的@RequestMapping
        		type: 'get',
        		success: function (responseText){
        			$('#content').html(responseText);//查询的结果页面嵌入div-content中
        		}
        	});
        }
        
        //按商品名称模糊查询，点击“搜索”的时候调用
        function searchProducts(form){
        	if(!checkEmpty(form)){//表单有空项时返回，这个函数定义在check.js里面
        		return false;
        	}
        	var search = document.getElementById("search").value;//查询关键字
        	$.ajax({
        		url: "search.do?",//按商品名模糊查询，去ProductController类中找对应的@RequestMapping
        		type: 'post',
        		data: {search:search},//请求参数，格式为{参数名：参数值1，参数名：参数值2。。}
        		success: function (responseText) {
        			$('#content').html(responseText);//查询的结果页面嵌入div-content中
        		}
        	});
        	return false; //返回false,阻止表单提交
        }
        
        //上一页，下一页时调用
        function nextAndPrevious(pageNum,totalRecords,maxPageNum,search){
        	$.post("showProductList.do",
        			{pageNum:pageNum, totalRecords:totalRecords, maxPageNum:maxPageNum, search:search},
        			function (responseText) {
        				$('#content').html(responseText);//查询的结果页面嵌入div-content中
        			}
        	);  	
        	
        }
        
        //转跳到注册页面
        function register(){
        	$.get("customer/register.do",function(responseText){
        		$("#content").html(responseText);
        	});
        }
        
        //注册方法
        function checkUserAndInsert(form){
        	if(!checkForm(form)){
        		return false;
        	}
        	$.ajax({
        		url:"customer/checkUser.do",
        		type:"post",
        		data:$('#userForm').serialize(),
        		success:function(responseText){
        			$("#content").html(responseText);
        		}
        	});
        	return false;
        }
        
        
      //查看商品详情
        function showProductById(productId){
        	$.post("showProductById.do",
        			{productId:productId},
        			function (responseText){
        				$('#content').html(responseText);
        			}		
        	);
        }
      
      
      //加入购物车
        function addCart(productId, productName, price, quantity){
        	$.post("cart/addCart.do",
        			{productId:productId, productName:productName, price:price, quantity:quantity},
        			function (responseText){
        				$('#content').html(responseText);
        			}
        	);
        }
        
      //查看购物车
      function showCart(){
    	  $.post("cart/showCart.do",
    			  function (responseText){
    		  			$('#content').html(responseText);
 		   	  		}
    		 );
      }
      
      //跳转到结算页面
      function settlement(allPrice){
    	  $.post("cart/cartCheckout.do",
    			  {allPrice:allPrice},
    			  function(responseText){
    		  $('#content').html(responseText);
    	  	}
    			  
    	  );
    	  
      }
      
    //提交订单
      function jiezhang(confirmOrderform){
      	
      	$.ajax({
      		url:"cart/cartToOrder.do",
      		type:"post",
      		data:$('#confirmOrderform').serialize(),
      		success:function(responseText){
      			$("#content").html(responseText);
      		}
      	});
      	return false;
      }
    
    //点击查看订单
    function showOrder(){
    	$.ajax({
    		type:"post",
    		url:"order/showOrderDetails.do",
    		success:function(responseText){
    			$("#content").html(responseText);
    		}
    	});
    }
    
    //查看订单详细信息
    function xiangxixinxi(orderId){
    	$.ajax({
    		type:"post",
    		url:"order/showxiangxixinxi.do",
    		data:{orderId:orderId},
    		success:function(responseText){
    			$("#content").html(responseText);
    		}
    	});
    }
      
     </script>     
  </head>    
  <c:if test="${!empty error}">
  		<script>
  			alert('${error}');//登录失败
  		</script>
  </c:if>
    <c:if test="${!empty success}">
  		<script>
  			alert('${success}');//登录失败
  		</script>
  </c:if>
  <body >   
   	<div id="container">
   		<div id="menu">
			<%@ include file="common/head.jsp" %>
		</div>
   		<div id="left">
			<%@ include file="common/left.jsp" %>
   		</div>
   		<div id="content">      			
			 
			
   		</div>
   		<div id="statusbar">
   			<%@ include file="common/statusBarNavigation.jsp" %>
		</div>
   	</div>  	
   	
  </body>
</html>
