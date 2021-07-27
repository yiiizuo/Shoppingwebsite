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
   <meta charset="utf-8" />

   <title>"喜上眉梢"项链详情</title>
   <link href="./css/xiangqing.css" rel="stylesheet" type="text/css" />
<style >
.character{
           padding-top:60px;
           width: 650px;
           margin: 11px 1;
           background-color: rgb(238, 231, 231);
           height: 430px;
           padding-right: 0;
         }
.picture{
           padding-top:60px;
           width: 100%;
           margin: 11px 1;
           background-size: 100% 100%;
           height: 430px;
           padding-left: 200pt;
         }
</style>
<script>

    var searchURL=window.location.search;
    searchURL = searchURL.substring(1, searchURL.length);
    console.log(searchURL);
    //account
    var login_account = searchURL.split("&")[0].split("=")[1];
    console.log(login_account);
    //login_state
    var login_state = searchURL.split("&")[1].split("=")[1];
    console.log(login_state);
    var shop_id = searchURL.split("&")[2].split("=")[1];
    // console.log(shop_id);


</script>
  </head>
<body>

   <center>
      <marquee height="50" width="100%" direction="left"  behavior="scroll"  bgcolor="pink">
          <font face="微软雅黑" size="+3" color="blueviolet" >项链专区|掀垫子柯基欢迎您的选购</font>
      </marquee>   
  </center>
   <br> 
   <div class="tb">
      <div class="top_left">掀垫子柯基欢迎您|
         <a id="login_access" href="login.jsp"><span style="color: orange;">  请先登录</span></a>           
         <a id="register_access" href="register.jsp">   |  没有账号?点击注册</a>
         <span id="welcome_user"></span>
         <div style="margin-left: 100px;margin-top: -80px;"></div>
         <button id="leave_login" style="float: inline-end;font-size: 13px;background-color:plum;height: 25px;color: black;width: 100px "type="submit" onclick=outlog()>退出登陆</button>
      </div>
      <div style="margin-top: -40px;margin-left: 1000px;">
        <img src="./picture/keji.png"  width="160px" height="160px" > <br>
      </div>
    </div>

<div>
<table>
  
  <tr>
      <td class="picture"><img id="shop_img_show" src="#" width="600" height="580"></td>
      <td>
          <table class="character" >
              <tr><h2 id="shop_name">#</h2></tr>
              <tr>
                <td ><h3 style="text-align: right;margin-top: -50px;font-size: 2em;margin-right: -150px;margin-bottom: 0;color: purple;">商品详情</h3></td>
              </tr>
              <tr>
                  <td><h2 style="text-align: center;background-color: rgb(247, 212, 247);">价格：</h2></td>
                  <td><h2 id="shop_price" style="background-color: rgb(247, 212, 247);" >#</h2></td>
              </tr>
              <tr>
                  <td><h2 style="text-align: center;background-color: rgb(247, 212, 247);">样式：</h2></td>
                  <td><select id="shop_style" name="select" style="text-align: center; width: 60px; height: 32px;" >                       
                      <option value="red" selected>红色</option>
                      <option value="white">白色</option>
                      <option value="grey">灰色</option>
                      <option value="green">绿色</option>
                      <option value="black">黑色</option>
                      <option value="yellow">黄色</option>
                      </select>
                      <img src="./picture/red.png" width="30px"height="15px">
                      <img src="./picture/white.png" width="30px"height="15px">
                      <img src="./picture/gray.png" width="30px"height="15px">
                      <img src="./picture/green.png" width="30px"height="15px">
                      <img src="./picture/black.png" width="30px"height="15px">
                      <img src="./picture/yellow.png" width="30px"height="15px">
                    </td>
              </tr>
              <tr>
                  <td><h2  style="text-align: center;background-color: rgb(247, 212, 247);">运费：</h2></td>
                  <td><h3>全场包邮</h3></td>
              </tr>
              <tr>
                  <td><h2  style="text-align: center;background-color: rgb(247, 212, 247);">尺码：</h2></td>
                  <td><h2>均码</h2></td>
              </tr>
              <tr>
                  <td style="text-align: center;">
                      <input type="button" type="submit" onclick=jiagou() value="加入购物车" style="width: 150px;margin-top: -10px;"></input>
                  </td>

                  <td style="text-align: left;"><button type="submit" onclick=buy() style="width: 150px;margin-top: -10px;">直接购买</button>
                  </td>
              </tr>

          </table>
      </td>
  </tr>
</table>
</div>


<a name="1"><h1 align="center"style="background: rgb(255, 169, 216); color: darkviolet;">商品详情</h1></a>
<div align="center" class="content3">

<table width=100% align="center" >
   <tr align="center">
       <td><img src="./picture/pic1.jpg" width="880" height="700"></td></tr>
   <tr align="center">
       <td><img src="./picture/pic2.jpg" width="880" height="700"></td></tr>  
   <tr align="center">
       <td><img src="./picture/pic3.jpg" width="880" height="700"></td></tr>  
   <tr align="center">
       <td><img src="./picture/pic4.jpg" width="880" height="700"></td></tr>  
   <tr align="center">
       <td><img src="./picture/pic5.jpg" width="880" height="700"></td></tr>  
</table>   

<form id='hideform' action="cart.jsp" method="POST">
    <input id="login_account" type="hidden" value="#" name="login_account">
    <input id="login_state" type="hidden" value="#" name="login_state">

    <input id="form_shop_id" type="hidden" value="#" name="form_shop_id">
    <input id="form_shop_name" type="hidden" value="#" name="form_shop_name">
    <input id="form_shop_style_value" type="hidden" value="#" name="form_shop_style_value">
</form>

<footer class="public-footer">
  <div>
      <p>2021 xdu.com. All rights reserved . 陕西掀垫子柯基小店版权所有</p>
      <p>陕ICP证111111号 陕ICP备11111111号-1 陕公网安备111122223333444号</p>
      <p>违法和不良信息举报电话: 0354-1234567 举报邮箱: 1234567@163.com</p>
  </div>
</footer>
<form id='hideformm' action="settlement.jsp" method="POST">
    <input id="account_pay" type="hidden" value="#" name="account_pay">
    <input id="num_pay" type="hidden" value="#" name="num_pay">
    <input id="shop_id_stlyes" type="hidden" value="#" name="shop_id_stlyes">
</form>   

</body>

<%
    request.setCharacterEncoding("utf-8");
    String shop_id=request.getParameter("shop_id");
    String account=request.getParameter("account");

    String shop_name=" ";
    float shop_price=0;


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
            //查找shops表
            ResultSet rs=stm.executeQuery("SELECT * FROM shops");
            while(rs.next()){
                if(rs.getString(1).equals(shop_id)){
                    shop_name=rs.getString(2);
                    shop_price=rs.getFloat(3);
                    break;
                }
            }
            
        }else{
            out.println("数据库连接失败！！！");
        }
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
%>
<script type="text/javascript">

        // console.log(shop_id);
    document.getElementById("shop_img_show").src="./picture/"+shop_id+".jpg";
    document.getElementById("shop_name").innerHTML='<%=shop_name%>';
    document.getElementById("shop_price").innerHTML='<%=shop_price%>';


    if(!login_state){
         //登陆失败
         login_failture();
      }
      else{
         if(login_state=="0" || login_state=="null"){
            login_failture();
         }
         else{
            login_success();
         }
         
      }

      function login_success(){
         login_access.style.display="none";
         register_access.style.display="none";
         welcome_user.style.display="inline";
         welcome_user.innerHTML=welcome_user.innerHTML+String(login_account);
         leave_login.style.display="inline";
         console.log("login_success");
      }
      function login_failture(){
         login_access.style.display="inline";
         register_access.style.display="inline";
         welcome_user.style.display="none";
         leave_login.style.display="none";
         console.log("login_failture");
      }


    function outlog(){
        var ansswer = confirm("确定退出登陆吗？");
        if(ansswer){
           window.location.href="login.jsp";
        }
    }
    function tocart(){
        var shop_style=document.getElementById("shop_style");
        var shop_style_index=shop_style.selectedIndex;
        var shop_style_value=shop_style.options[shop_style_index].value;
        var hideform= document.getElementById("hideform");

        var t1=document.getElementById("login_account");
        var t2=document.getElementById("login_state");
        var t3=document.getElementById("form_shop_id");
        var t4=document.getElementById("form_shop_name");
        var t5=document.getElementById("form_shop_style_value");
        t1.value=login_account;
        t2.value=login_state;
        t3.value=shop_id;
        t4.value=document.getElementById("shop_name").innerHTML;
        t5.value=shop_style_value;
        
        hideform.submit();

    }

      
    function jiagou(){
        var ansswer = confirm("是否加入购物车");     
        if(ansswer){
            if(login_state && login_state!="0" && login_state!="null"){
                tocart();
            }
            else{
                alert("请先登陆");
                window.location.href="login.jsp";
            }
        }
    }

    function buy(){
        var ansswer = confirm("是否直接购买该商品?");
        if(ansswer){
            if(login_state && login_state!="0" && login_state!="null"){
                var hideformm=document.getElementById("hideformm");

                var account_pay=document.getElementById("account_pay");
                var num_pay=document.getElementById("num_pay");
                var shop_id_stlyes=document.getElementById("shop_id_stlyes");
                var shop_style=document.getElementById("shop_style");
                var shop_style_index=shop_style.selectedIndex;
                var shop_style_value=shop_style.options[shop_style_index].value;

                
                account_pay.value=login_account;
                num_pay.value=document.getElementById("shop_price").innerHTML;
                shop_id_stlyes.value="0&&"+"<%=shop_name%>"+"|"+shop_style_value+"|1";
                console.log(hideformm);
                hideformm.submit();
            }else{
                alert("请先登陆");
                window.location.href="login.jsp";
            }

        }
      }
</script>
</html>