<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
   <head>  
  </head>
  <c:if test="${!empty message}">
  		<script>
  			alert('${message}');
  		</script>
  </c:if>
  <body>  
    <table width="718" border="1" align="center">	
		<tr>
		  <td width="100%" align="center" valign="top" bgcolor="#FFFFFF" border="1">
		   <form name="userForm" id="userForm"   onsubmit="return checkUserAndInsert(userForm)">
              <table width="500" border="0" cellspacing="0" cellpadding="0">
                <tr>
                   <td width="107" height="35"> 用户名  </td>
                   <td><input type="text" name="userName" ></td>
                </tr>
                <tr>
                   <td width="107" height="35">密码</td>
                   <td><input type="password"  name="password" id = "password1"> </td>          
                </tr>
                <tr>
                    <td width="107" height="35">确认密码</td>
                    <td><input type="password"  name="password2" id = "password2"> </td>          
               </tr>  
                <tr>
                   <td width="107" height="35"> 姓名  </td>
                   <td><input type="text" name="realName" ></td>
                </tr>  
                 <tr>
                   <td width="107" height="35"> 电话  </td>
                   <td><input type="text" name="mobile" ></td>
                </tr> 
                 <tr>
                   <td width="107" height="35"> 邮箱  </td>
                   <td><input type="text" name="email" ></td>
                </tr>  
                  <tr>
                   <td width="107" height="35"> 密码问题 </td>
                   <td><input type="text" name="passwordQuestion" ></td>
                </tr> 
                  <tr>
                   <td width="107" height="35"> 密码问题答案</td>
                   <td><input type="text" name="passwordHintAnswer" ></td>
                </tr>          
               <tr>
                  <td colspan="2">
                   <input type="image" class="input1" src="resources/images/systemImages/save.jpg" width="51" height="22" >
                     &nbsp;&nbsp;
                   <a href="#" onclick="javascript:form.reset()" >
                       <img src="resources/images/systemImages/clear.gif">
                   </a>
                    &nbsp;&nbsp;
                   <a href="#"  onclick="javascript:history.go(-1)" >
                       <img src="resources/images/systemImages/back.gif">
                   </a>
                  <td>
               </tr>  
               </table>
              
          </form>
           </td>
		</tr>	
	</table>
  </body>
</html>
