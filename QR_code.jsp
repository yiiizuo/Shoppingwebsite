<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@ page import="com.Database.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%
    //账号
    String login_account=request.getParameter("account");
    //购买的商品
    String payshops=request.getParameter("payshops");
    //付款金额
    String num_pay=request.getParameter("num_pay");
    //收件人姓名
    String customer_name=request.getParameter("customer_name");  
    //地址
    String address=request.getParameter("address");
    //手机号
    String phone_num=request.getParameter("phone_num");  
    //邮编
    String post_code=request.getParameter("post_code");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>二维码支付</title>
    <link rel="stylesheet" href="./css/QR_code.css">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
        <hr>
        <div class="main">
            <span id="welcome_user"></span>
            <span name="total" id="pay"> 应付总额：&yen;  </span>
            <div class="suggestion">订单提交成功，还差一步就抢到心爱的商品，快快支付吧！！</div>
            <div class="payment">  
                <div class="payment-header">微信支付</div>
                <hr style="border: 2px hotpink;"> 
                <div class="payment-body"><img src="./picture/二维码.jpg"></div>
                <div class="payment-icon"><img src="./picture/扫描.png" class="icon"></div>
                <div class="payment-text"><table style="border: 2px hotpink;"><tr><td>请使用微信“扫一扫”扫描二维码支付</td></tr></table></div>               
            </div>
            <div>
                <button onclick="backindex()">返回主页</button>
                <button onclick="paysucess()">支付成功</button>
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

    <form id='hideform' action="index.jsp" method="POST">
        <input id="username" type="hidden" value="#" name="username">
        <input id="login_state" type="hidden" value="#" name="login_state">
    </form>

    <form id='hideformm' action="pay_success.jsp" method="POST">
        <!-- 账号 -->
        <input id="account" type="hidden" value="#" name="account">
        <!-- 购买的商品 -->
        <input id="payshops" type="hidden" value="#" name="payshops">
        <!-- 付款金额 -->
        <input id="num_pay" type="hidden" value="#" name="num_pay">
        <!-- 收件人姓名 -->
        <input id="customer_name" type="hidden" value="#" name="customer_name">
        <!-- 地址 -->
        <input id="address" type="hidden" value="#" name="address">
        <!-- 手机号 -->
        <input id="phone_num" type="hidden" value="#" name="phone_num">
        <!-- 邮编 -->
        <input id="post_code" type="hidden" value="#" name="post_code">
    </form>

  </body>
    <script>
        var pay=document.getElementById("pay");
        pay.innerHTML="应付总额：&yen;"+<%=num_pay%>;
        var login_account=document.getElementById("welcome_user");
        login_account.innerHTML="掀垫子柯基欢迎您|"+<%=login_account%>;

        function backindex(){
            var ansswer = confirm("是否返回主页?");
            if(ansswer){
                var hideform=document.getElementById("hideform");
                var username=document.getElementById("username");
                var login_state=document.getElementById("login_state");

                username.value=<%=login_account%>;
                login_state.value=1;
                hideform.submit();
            }
            
        }
        function paysucess(){
            var ansswer = confirm("是否已经支付成功?");
            if(ansswer){
                var hideform=document.getElementById("hideformm");
                document.getElementById("account").value="<%=login_account%>";
                document.getElementById("payshops").value="<%=payshops%>";
                document.getElementById("num_pay").value="<%=num_pay%>";
                document.getElementById("customer_name").value="<%=customer_name%>";
                document.getElementById("address").value="<%=address%>";
                document.getElementById("phone_num").value="<%=phone_num%>";
                document.getElementById("post_code").value="<%=post_code%>";
                hideform.submit();
                console.log(hideform);
            }
        }
    </script>
</html>
