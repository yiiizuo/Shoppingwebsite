<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@ page import="com.Database.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

     <title>注册结果</title>
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
                <%
                request.setCharacterEncoding("utf-8");
                String account=request.getParameter("uname1");
                String password=request.getParameter("upas1");
                try{
                    Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
                    String url="jdbc:mysql://localhost:3306/mysql";  //根据自己的情况修改mysql数据库ip和端口，mysql是数据库上存在的一个库
                    String username="root";   //登录账号
                    String userpassword="123456";  //登录密码
                    Connection conn=DriverManager.getConnection(url,username,userpassword);
                    if(conn!=null){
                        //out.println("mysql数据库连接成功！！！");
                        //创建Statement
                        Statement stm = (Statement) conn.createStatement();
                        //查询账号是否已经注册
                        ResultSet rs=stm.executeQuery("SELECT * FROM users WHERE user_account="+account);
                        if(rs.next()){
                            %>
                                <p>账号已经注册，请返回注册界面修改用户名</p>
 
                            <%
                        }
                        else{
                            %>
                            <p>正在注册！</p>
                            <%
                            String sql_select = "insert into users(user_account , user_password) values('"+account+"','"+password+"')";
                            int i= stm.executeUpdate(sql_select);
                            String creatsql = "CREATE TABLE "+account+"_table("+ "shop_id varchar(10) not null,"+ "shop_style varchar(10) not null"+ ");";
                            int j= stm.executeUpdate(creatsql);
                            if(i!=0 &&j>=0){
                                %>
                                <p>注册成功！请返回登陆界面登陆</p>
                                <%
                            }
                        }
                    }else{
                        out.println("数据库连接失败！！！");
                    }
                }catch(ClassNotFoundException e){
                    e.printStackTrace();
                }
        
            %>  
            <div><a href="./login.jsp">返回登陆</a><a href="./register.jsp">返回注册</a></div> 
            </div>
        </div>
    </div>
  </body>
</html>
