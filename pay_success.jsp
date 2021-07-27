<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@ page import="com.Database.*"%>
<%@ page import="java.sql.*"%>


<%
    //账号
    String account=request.getParameter("account");
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
    
    try{
        Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
        String url="jdbc:mysql://localhost:3306/mysql";  //根据自己的情况修改mysql数据库ip和端口，mysql是数据库上存在的一个库
        String username="root";   //登录账号
        String userpassword="123456";  //登录密码
        String formuser="order_info";
        Connection conn=DriverManager.getConnection(url,username,userpassword);
        if(conn!=null && account!=null){
            //out.println("mysql数据库连接成功！！！");
            //创建Statement
            Statement stm = (Statement) conn.createStatement();
            String sql_into = "insert into "+formuser+"(account , payshops, num_pay, customer_name, address, phone_num, post_code) values('"+account+"','"+payshops+"','"+num_pay+"','"+customer_name+"','"+address+"','"+phone_num+"','"+post_code+"')";
              
            stm.executeUpdate(sql_into);            
        }else{
            out.println("数据库连接失败！！！");
        }
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }


%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

     <title>购买成功</title>
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
        a{
            text-indent: 2em;
            font-family: "MicrosoftJhengHei";
            line-height: 40px;
            font-size: 30px;
            text-decoration:none;
            text-align:right;
            display: block
        }
        a:active{color: red; }
        a:visited {color:purple;text-decoration:none;} 
        a:hover {color: red; text-decoration:underline;} 
        p{
            text-indent: 2em;
            font-family: "MicrosoftJhengHei";
            line-height: 40px;
            font-size: 30px;
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
     
            <p>购买成功！</p>
            </div>
        </div>
    </div>
  </body>
</html>
