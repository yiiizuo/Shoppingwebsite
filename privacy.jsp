<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

     <title>隐私条款</title>
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
            margin-top: 40px;
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
                <h2>掀垫子柯基小店隐私条款</h2>
                <p>您的信任对我们非常重要，我们深知个人信息对您的重要性，我们将按照法律法规要求，采取相应安全保护措施，尽力保护您的个人信息。您在使用我们的产品与/或服务时，我们可能会收集和使用您的相关信息。我们希望通过《隐私政策》向您说明我们在您使用我们的产品与/或服务时如何收集、使用、保存、共享和转让这些信息，以及我们为您提供的访问、更新、删除和保护这些信息的方式。</p>
                <p>本政策将帮助您了解以下内容：</p>
                <p>1、我们如何收集和使用您的个人信息</p>
                <p>2、我们如何使用 Cookie 和同类技术</p>
                <p>3、我们如何共享、转让、公开披露您的个人信息</p>
                <p>4、我们如何保护和保存您的个人信息</p>
                <p>5、您如何管理个人信息</p>
                <p>6、我们如何处理未成年人的个人信息</p>
                <p>7、您的个人信息如何在全球范围转移</p>
                <p>8、如何联系我们</p>
            </div>
        </div>
    </div>
  </body>
</html>
