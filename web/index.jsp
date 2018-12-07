<%--
  Created by IntelliJ IDEA.
  User: Tony
  Date: 2018/10/18
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>AjaxTest</title>
  <script src="JS/jquery.js">
      $("#btn_ajax").click(function () {
          $.ajax({
              type:"post",
              url:"ajaxChange.java/setPurDep.action",
              data:{name:'tn',password:'123'},
              dataType:"text",
              success:function () {
                  alert("改变成功!");
              },
              error:function () {
                  alert("改变失败！");
              }
          });
      });
  </script>
</head>
<body>
<form action="login" method="post">
  用户名：<input type="text" name="uname">
  <br>
  密&nbsp;&nbsp;&nbsp;码：<input type="password" size="20" name="pwd">
  <br>
  <input type="submit" value="登录">
</form>
<br>
<button id="btn_ajax">ajax功能实现</button>
</body>
</html>