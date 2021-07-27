<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
    try{
        Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
        String url="jdbc:mysql://localhost:3306/mysql";  //根据自己的情况修改mysql数据库ip和端口，mysql是数据库上存在的一个库
        String username="root";   //登录账号
        String password="123456";  //登录密码
        Connection conn=DriverManager.getConnection(url,username,password);
        if(conn!=null){
            out.println("mysql数据库连接成功！！！");
        }else{
            out.println("数据库连接失败！！！");
        }
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
    //String sql = "insert into users(user_account , user_password) values('"+1+"','"+1+"')";
                //int i= stm.executeUpdate(sql);
                //out.println(i);
                //if(i==0){
                //    out.println(sql);
                //}
                String selectrs=stm.executeQuery("SELECT * FROM users where user_account='18069100107");
                String selectpass=selectrs.getString("user_password");
                out.println(selectpass);

               // ResultSet rs=stm.executeQuery("SELECT * FROM users");
                //while(rs.next()){
                //    out.println(rs.getString(1));
                //}


                if(conn!=null){
                    //out.println("mysql数据库连接成功！！！");
                    //创建Statement
                    Statement stm = (Statement) conn.createStatement();
                    //查询账号是否已经注册
                    ResultSet rs=stm.executeQuery("SELECT * FROM users WHERE user_account="+account);
        
                    if(rs!=null){
                        out.println("账号已经注册!");
                    }
                    else{
                        out.println("账号正在注册");
                        String sql_select = "insert into users(user_account , user_password) values('"+account+"','"+account+"')";
                        int i= stm.executeUpdate(sql_select);
                        out.println(i);
                        if(i==1){
                            out.println("注册成功！请返回登陆界面登陆");
                        }
                    }
                }else{
                    out.println("数据库连接失败！！！");
                }
%>
</body>
</html>