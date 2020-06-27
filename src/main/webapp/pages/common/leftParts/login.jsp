<%@ page language="java"  contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>

<html>  
  <body>
    <table width="300" height="155" border="0" 
     cellpadding="0" cellspacing="0"  align="center" 
     background="resources/images//systemImages/fg_left01.jpg" style="background-repeat: no-repeat;">
      <!-- 设置空行，美化显示效果 -->
       <tr>
          <td width="100" align="left" valign="bottom">
            &nbsp; &nbsp;
          </td>
        </tr>
        <tr>
          <td width="100%" align="left" valign="middle">         
            <form name="loginform" id = "loginform" method="post" action="customer/login.do" onsubmit="return checkEmpty(loginform);">
              <table width="250" align="center">
               <tr height="10">
                 <td></td>
               </tr>
               <tr>
                 <td width="60" height="25" align="left"> 账号：
                 </td>
                 <td width="115" height="25">
                   <input name="userName" type="text" style="width:100%">
                 </td>
               </tr>
               <tr>
                 <td width="60" height="25"> 密码：
                 </td>
                 <td width="115" height="25">
                   <input name="password" type="password" style="width:100%">
                 </td>
               </tr>
               <tr>
                   <td height="25">
                      <input type="image" class="input1" src="resources/images/systemImages/bg-land.gif" 
                     width="51" height="20"> 
                    </td>
                    
                    <td height="25">
                      &nbsp;&nbsp;<a href="javascript:register();">注册</a>
                      &nbsp;&nbsp;
                      <a href="">找回密码</a>
                    </td>                    
               </tr> 
              </table>
            </form>
          </td>
        </tr>
      </table>
  </body>
</html>


