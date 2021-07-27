<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商品结算页面</title>
    <link rel="stylesheet" href="./css/settlement.css">
    <style >
        .message_addressee{
            line-height: 28px;
            color: #999;
            font-size: 18px;
            border: 2px solid #999;
            width: 300px;
        }
        .div_addressee{
            display: block;
            line-height: 32px;
        }
        .div_addressee span{

            font-size: 18px;
        }
        </style>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
    String login_account=request.getParameter("account_pay");
    String num_pay=request.getParameter("num_pay");  
    String shop_id_stlyes=request.getParameter("shop_id_stlyes");

    %>
  
  <body>
    <div class="public-shop-account">
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
        <span id="welcome_user">###</span>
        <hr style="border: 1px hotpink solid;">
        <div class="content">
            <div class="shop-account-head"> 请填写并核对订单信息 </div>
            <div class="shop-account-info">
                <div class="edit-address">
                    <div class="address-head">收货人信息：</div>
                    <div class="address-info" style="display: block;">
                        <div class="div_addressee"><span>请输入收件人的地址:</span><input id="input_address" type="text" class="message_addressee"></div>
                        <div class="div_addressee"><span>请输入收件人的联系方式:</span><input id="input_phone" type="text" class="message_addressee"></div>
                        <div class="div_addressee"><span>请输入收件人的姓名:</span><input id="input_name" type="text" class="message_addressee"></div>
                        <div class="div_addressee"><span>请输入收件人所在地的邮编:</span><input id="input_post_code" type="text" class="message_addressee"></div>
                    </div>
                </div>
                <div class="edit-pay">
                    <div class="pay-head">支付方式</div>
                    <div class="pay-info">
                        <input type="radio" name="measure" id="pay1">货到付款</input>
                        <input type="radio" name="measure" id="pay2" checked>在线支付</input>
                    </div>
                </div>
            </div>
            <div class="shop-account-detail">
                <div class="account-address">
                    <span>总商品金额：</span>
                    <span id="cart_all"></span>
                    <span>运费：</span>
                    <span><i>&yen;10.00</i></span>
                </div>
                <div class="account-pay">
                    <span name="total"> 应付总额：</span><span id="pay_all"></span>
                </div>
                <div class="account-btn"><button name="shopping" onclick=pay()>提交订单</button></div>
            </div>
        </div>
    </div>
    <footer class="public-footer">
        <div>
            <a href="服务条款.jsp">服务条款</a>
            <a href="隐私条款.jsp">隐私条款</a>
            <a href="支付用户服务协议.jsp">支付用户服务协议</a>
        </div>
        <div>
            <p>2021 xdu.com. All rights reserved . 陕西掀垫子柯基小店版权所有</p>
            <p>陕ICP证111111号 陕ICP备11111111号-1 陕公网安备111122223333444号</p>
            <p>违法和不良信息举报电话: 0354-1234567 举报邮箱: 1234567@163.com</p>
        </div>
    </footer>
    <form id='hideform' action="QR_code.jsp" method="POST">
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
        document.getElementById("welcome_user").innerHTML="掀垫子柯基欢迎您|"+<%=login_account%>;
        document.getElementById("cart_all").innerHTML="&yen;"+<%=num_pay%>;
        document.getElementById("pay_all").innerHTML="&yen;"+(parseFloat(<%=num_pay%>)+10);
        function pay(){
            var pay1=document.getElementById("pay1");
            var pay2=document.getElementById("pay2");

            var hideform=document.getElementById("hideform");
            document.getElementById("account").value=<%=login_account%>;
            document.getElementById("payshops").value="<%=shop_id_stlyes%>";
            document.getElementById("num_pay").value=document.getElementById("pay_all").innerHTML.split("¥")[1];;
            document.getElementById("customer_name").value=document.getElementById("input_name").value;
            document.getElementById("address").value=document.getElementById("input_address").value;
            document.getElementById("phone_num").value=document.getElementById("input_phone").value;
            document.getElementById("post_code").value=document.getElementById("input_post_code").value;
            console.log(hideform);

            if(pay1.checked){
                hideform.action="pay_success.jsp"
                hideform.submit();
            }
            if(pay2.checked){
                hideform.action="QR_code.jsp"
                hideform.submit();
            }
          
      }
  </script>
</html>
