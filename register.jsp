<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>用户注册</title>
       <link rel="stylesheet" type="text/css"  href="./css/register.css">

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <script type="text/javascript">
        function doJudge(){
            if(document.getElementById("agree").checked!=true){
                alert("请确认是否阅读并接受以下条款");
                return false;
            }
            else{
                var mima1=document.getElementById("upas1").value 
                var mima2=document.getElementById("upas2").value 
                if(mima1!=mima2) 
                { 
                    alert("两次密码输入不同，请重新输入");
                    document.getElementById("upas1").focus() ;
                    document.getElementById("agree").checked=false;
                    return false;
                } else {
                    return true;
                }
            }
        }


</script> 
       </script>
    
  </head>

  <body>
     <div class="container">
        <div class="header">
            <div style="float: left; width: 50%;">掀垫子柯基小店</div>
            <div class="zz">
                <table>
                    <tr><td>100%正品|</td>
                    <td>7天放心退|</td>
                    <td>限时抢购</td></tr>
                </table>
            </div>
        </div>
        <div class="main">
            <div class="bp"><img src="./picture/consumption.png" style="width: 700px;"></div>
            <div class="register">
                <div class="register-header">
                    <div class="register-title">会员注册</div>
                    <div class="register-switchlogin">已注册可<a href="login.jsp" target="_new">直接登录</a></div>
                </div>
                <div class="register-body">
                    <hr>
                    <form method="post" action="register_manager.jsp" onsubmit="return doJudge()">
                        <table>
                            <tr><td><div class="table-name">用户名</div><input class="input_area" type="text" required="required" placeholder="请输入用户名" name="uname1" id="uname"/></td></tr>
                            <tr><td><div class="table-name">密码</div><input class="input_area" type="password" required="required" placeholder="请输入密码"name="upas1" id="upas1"/></td></tr>
                            <tr><td><div class="table-name">确认密码</div><input class="input_area" type="password" required="required" placeholder="请再次输入上面的密码" name="upas2" id="upas2" /></td></tr>
                            <tr><td><div class="table-name1"><input class="input_area" type="checkbox" id="agree" value="" name="agree"  style="width: 15px; height: 15px;" >我已阅读并接受以下条款：</td></tr>
                                <tr><td><div class="table-name2">
                                    <a href="service.jsp">《服务条款》</a>
                                    <a href="privacy.jsp">《隐私条款》</a>
                                    <a href="payment_services.jsp">《支付用户服务协议》</a></div>
                                </td></tr>
                            <tr>
                                <td>
                                    <input type="submit" name="submit" class="submit" value="注册"> 
                                    <input type="reset" value="重置" class="submit">
                                </td>
                            </tr>  
                        </table>
                    </form>
                </div>               
            </div>
        </div>
    </div>
    <footer class="public-footer">
        <div>
            <p>2021 xdu.com. All rights reserved . 陕西掀垫子柯基小店版权所有</p>
            <p>陕ICP证111111号 陕ICP备11111111号-1 陕公网安备111122223333444号</p>
            <p>违法和不良信息举报电话: 0354-1234567 举报邮箱: 1234567@163.com</p>
        </div>
    </footer>
  </body>
</html>
