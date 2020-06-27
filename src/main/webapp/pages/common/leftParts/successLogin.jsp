<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="utf-8"%>
<html>

<body>

	<table width="300" height="140" border="0" cellpadding="1"
		cellspacing="0" align="center"
		background="resources/images/systemImages/fg_left01.jpg"
		style="background-repeat: no-repeat;">
		<tr>
			<td width="100" align="left" valign="bottom">&nbsp; &nbsp;</td>
		</tr>
		<tr>
			<td width="100%" align="middle" valign="bottom" height="30">
				${sessionScope.user.userName }登录成功</td>
		</tr>
		<tr>
			<td width="100%" height="30" align="middle" valign="middle">
				登录时间:${date }</td>
		</tr>
		<tr>
			<td width="100%" height="30" align="middle" valign="middle"><a
				href="customer/logout.do">退出登录</a> &nbsp; &nbsp; <a href="">修改个人信息</a></td>
		</tr>
		<tr>
			<td width="100" align="left" valign="bottom">&nbsp; &nbsp;</td>
		</tr>
	</table>
</body>
</html>
