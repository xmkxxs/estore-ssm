<%@ page language="java"   contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<html>    
  <body>    
    <table width="718" border="1" align="center">		 
		<tr>	    
			 <td width="100%" align="center" valign="top" bgcolor="#FFFFFF"> 
			  
	<br><br>
	<strong>收银结帐</strong>   
	<form name="confirmOrderform"  id="confirmOrderform" onsubmit="return jiezhang(confirmOrderform)">
		  <table width="68%"  border="0" cellspacing="0" cellpadding="0">
		   <tr>
             <td width="24%" height="30"><div align="center">总金额：&nbsp;</div></td>
              <td width="76%">${allPrice }</td>
            </tr>
            <tr>
              <td width="24%" height="30"><div align="center">用户名称：</div></td>
              <td width="76%">&nbsp;<input type="text" name="name" value="${userName }" readOnly></td>
            </tr>
            <tr>
              <td height="30"><div align="center">真实姓名：</div></td>
              <td>&nbsp;<input type="text" name="realName" value="${realName }"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">联系地址：</div></td>
              <td>&nbsp;<input type="text" name="address"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">联系电话：</div></td>
              <td>&nbsp;<input type="text" name="mobile" value="${mobile }"></td>
            </tr>
            <tr>
              <td height="30"><div align="center">付款方式：</div></td>
              <td>&nbsp;
		 <select name="paymentMode" class="textarea">
		    <option value="">请选择</option>
                    <option value="银行付款">银行付款</option>
                    <option value="邮政付款">邮政付款</option>
                    <option value="现金支付">现金支付</option>
               </select>
	     </td>
            </tr>

            <tr>
              <td height="30"><div align="center">送货方式：</div></td>
              <td>&nbsp;<select name="deliveryMethod" class="textarea">
		    <option value="">请选择</option>
                    <option value="普通邮寄">普通邮寄</option>
                     <option value="特快专递">特快专递</option>
                    <option value="EMS专递方式">EMS专递方式</option>
                </select>
	      </td>
            </tr>
            <tr>
              <td height="60"><div align="center">备注信息：</div></td>
              <td>&nbsp;<textarea name="memo"></textarea></td>
            </tr>
            
        </table>
		  <br>
              <input type="submit" name="Submit2" value="提交">&nbsp;
               <input type="reset" name="reset" value="清除">&nbsp;
               <input type="button" name="back" value="返回" onClick="">
      </form>
	
    </td>
    </tr>
		 
  </table>
  </body>
</html>
