<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>服务条款</title>
    <style type="text/css">
        .container{
            background-size: cover;
            background-image: url(./picture/register.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;   
            width: 100%;
            height: 900px;
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
        .zz{
            position: relative;
            top: 10px;
            font-size: 30px;
            color: gray;
        }
        .fb{
            padding: 10px 35px 10px 35px;
            width: 70%;
            margin-top: 30px;
            margin-left: 250px;
            background-color: white;

        }
        h2{
            text-align: center;
        }
        p{
            text-indent: 2em;
            font-family: "MicrosoftJhengHei";
            line-height: 40px;
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
            <div class="fb">
                <h2>掀垫子柯基小店支付用户服务协议</h2>
                <p><b>一旦您勾选例如“我已阅读并同意”链接且进行提交后，即意味着您已充分理解本协议的全部条款的含义及相应的法律后果，同意与本公司以数据电文形式订立本协议。</b></p>             
                <p>一、声明和保证</p>
                <p>1、主体地位。请您在接受本协议或者以其他本公司允许的方式实际使用本服务之前，请确保您是适格的合同主体，并在清楚理解本协议内容及其法律后果后自行决定是否同意签署。</p>
                <p>2、法律效力。您知悉并确认，您勾选例如“我已阅读并同意”链接后，本协议即生效，本协议生效后对本公司及您均具有法律约束力。</p>
                <p>3、特殊保证。如您为无民事行为能力人或为限制民事行为能力人，且您勾选了例如“我已阅读并同意”之链接，则视为您的监护人同意您订立并使用本服务。同时，也请告知您的监护人，并在您监护人的指导下阅读本协议和使用唯品支付服务。</p>
                <p>二、支付服务内容</p>
                <p>1、 我们将根据您的申请及《非银行支付机构网络支付业务管理办法》及其他监管规定要求，为您开立掀垫子柯基小店支付账户，并提供相关必要的信息查询、技术支持等服务，具体以我们实际提供的服务内容为准。</p>
                <p>2、 您申请开立支付账户的，应在我们提供的相关网络页面或客户端页面如实填写、提供您的真实身份信息。</p>
                <p>3、 我们将按照实名制管理要求，登记并采取有效措施验证您的身份信息，按照监管规定核对有效身份证件并留存前述信息，建立相应的身份识别体系，确保在有效核实您的身份信息及您的真实意愿后，为您开立唯品支付账户。</p>
            </div>
        </div>
    </div>
  </body>
</html>
