<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basepath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.mycodes.net</title>
<script src="js/jquery.js"></script>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script> 
	function genTimestamp() {
	    var time = new Date();
	    return time.getTime();
	}
	
	// 点击获取验证码
	function changeCode() {
	    $("#Img").attr("src", "uc/getVerifyCode?t=" + genTimestamp());
	}
</script> 
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="images/top02.gif"><img src="images/top03.gif" width="776" height="147" /></td>
  </tr>
</table>
<form action="uc/islogin" method="post" >
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="35%" height="35" class="login-text02">用户名称：<br /></td>
        <td width="65%"><input name="loginname" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密　码：<br /></td>
        <td><input name="loginpwd" type="password" size="33" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">验证图片：<br /></td>
        <td><img src="uc/getVerifyCode" id="Img" onclick="changeCode();"></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">验证码：</td>
        <td><input name="code" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="确认登陆"  />
          <input name="Submit232" type="reset" class="right-button02" value="重 置" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>