<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户登录</title>

    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
    .register-switchlogin{
    position: relative;
    top: 30px;
    left: 8px;
    font-size: 20px;
    font-weight: initial;
    text-align: center;
    }        
        a{
            text-decoration: none;
            color: hotpink;
        }
        .bp{
            position: relative;
            top: 50px;
            left: 10%;
        }
        .container{
            background-size: cover;
            background-image: url(./picture/register.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;   
            width: 100%;
            height: 850px;
            margin:0px auto;
        }
        .header{
            width:100%;
            height:100px;
            background-color: white;
            color: rgb(187, 116, 187);
            font-size: 60px;
            font-weight: bold;
            font-family: "MicrosoftJhengHei";
            text-align: center;
        }
        .public-footer{
            text-align: center;
        } 
        .zz{
            position: relative;
            top: 20px;
            font-size: 30px;
            color: gray;
        }
        .login{
            position: absolute; 
            top: 40%; 
            left: 70%; 
            margin: -150px 0 0 -150px; 
            width: 500px; 
            height: 450px;
            background-color: white;
        }
        .login-header{
            position: absolute;
            width: 100%;
            height: 55px;
            font-size: 20px;
            font-family:"MicrosoftJhengHei";
            font-weight: bold;
        }
        .login-title{
            position: relative;
            float: left;
            margin-left: 10px;
            top: 20px;
            left: 8px;
            font-size: 30px;
            color: grey;
            width: 45%;
        }
        .login-switchlogin{
            position: relative;
            top: 30px;
            left: 8px;
            font-size: 20px;
            font-weight: initial;
            text-align: center;
        }  
        .login-body{
            position: relative;
            width: 465px;
            height: 500px ;
            top: 60px;
            left: 20px
        }
        input{
            position: relative;
            margin-top: 45px;
            margin-left: 10px;
            width:300px;
            height: 50px; 
            font-size: 20px;        
        }
        .table-name{
            margin-top: 60px;
            margin-left: 5px;
            font-size: 20px;
            font-weight: bold;
            float: left;
            width: 80px;
            height: 40px;
            text-align: center;
        }
        .table-name1{
            margin-top: 6px;
            margin-left: 20px;
            font-size: 15px;
            font-weight: bold;
            float: left;
            width: 390px;
            height: 40px;
            text-align: center;
        }
        button{
            width:298px;
            height: 45px;
            border: 0;
            margin-top: 60px;
            margin-left: 20%;
            box-sizing: content-box;
            background-color: hotpink;
            font-size: 20px;
            font-weight: bold;
            color: white;
        }
    </style>
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
            <div class="login">
                <div class="login-header">
                    <div class="login-title">会员登录</div>
                    <div class="register-switchlogin">未注册可<a href="register.jsp" target="_new">注册账号</a></div>
                </div>
                <div class="login-body">
                    <hr>
                    <form action="welcome.jsp" method="POST">
                        <table>
                            <tr><td><div class="table-name">用户名</div><input type="text" name="uname" required="required" placeholder="请输入用户名"/></td></tr>
                            <tr><td><div class="table-name">密码</div><input type="password" name="upas" required="required" placeholder="请输入密码"/></td></tr>
                            <tr><td><button type="submit" >登录</button></td></tr>
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

    <%  String uname1=request.getParameter("uname1");
        String upas1=request.getParameter("upas1");
        session.setAttribute("uname1",uname1);
        session.setAttribute("upas1",upas1);
    %>

  </body>
</html>
