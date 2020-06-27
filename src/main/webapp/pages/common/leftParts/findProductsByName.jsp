<%@ page language="java"  contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<html>  
  <body>
      <table width="300" height="152" border="0" align="center" background="resources/images/systemImages/fg_left00.jpg">
      <!-- 设置空行，美化显示效果 -->
        <tr>
          <td width="100" align="left" valign="bottom">
            &nbsp; &nbsp;
          </td>
        </tr>
        <!-- 显示提示信息 -->
        <tr>
          <td width="100" align="left" valign="bottom">
            &nbsp; &nbsp;搜索商品：
          </td>
        </tr>
         <tr>
          <td >
        <form name="searchForm" id = "searchForm" onsubmit = "return searchProducts(searchForm);">
             <table>
              <tr>
                <td >&nbsp; &nbsp;</td>
                <td>
                  <input name="search" id = "search" type="text" size="22"/>
                </td>
                <td>
                  <input type="image" src="resources/images/systemImages/Search.gif"/>
                </td>
              </tr>
             </table>            
          </form> 
      </td>
   </tr>
  </table>  
  </body>
</html>
