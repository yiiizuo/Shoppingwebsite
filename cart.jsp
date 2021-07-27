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
    String login_account=request.getParameter("login_account");
    String login_state=request.getParameter("login_state");

    String form_shop_id=request.getParameter("form_shop_id");
    String form_shop_name=request.getParameter("form_shop_name");
    String form_shop_style_value=request.getParameter("form_shop_style_value");
    


    %>
    <script>
        var login_account=<%=login_account%>;
        console.log(login_account)
        var login_state=<%=login_state%>;
        console.log(login_state);
        if(login_state=='null'||login_state=='0'||!login_state){
            alert('您还没有登录，请登录...'); 
            window.location='login.jsp'; 
        }
        var shops_list=new Array();
        var m=0;
    </script>
<%  
    try{
        Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
        String url="jdbc:mysql://localhost:3306/mysql";  //根据自己的情况修改mysql数据库ip和端口，mysql是数据库上存在的一个库
        String username="root";   //登录账号
        String userpassword="123456";  //登录密码
        String formuser=login_account+"_table";
        int is_exit=0;
        Vector show_shops=new Vector();
        Connection conn=DriverManager.getConnection(url,username,userpassword);
        if(conn!=null){
            //out.println("mysql数据库连接成功！！！");
            //创建Statement
            Statement stm = (Statement) conn.createStatement();
            //查找shops表
            
            ResultSet rs=stm.executeQuery("SELECT * FROM "+formuser);
            while(rs.next()){
                if(rs.getString(1).equals(form_shop_id) && rs.getString(2).equals(form_shop_style_value)){
                    is_exit=1;
                }
                Vector show_shop=new Vector();
                show_shop.add(rs.getString(1));
                show_shop.add(rs.getString(2));
                show_shops.add(show_shop);  
            }
            ResultSet rm=stm.executeQuery("SELECT * FROM shops");


            while(rm.next()){
                for(int i=0;i<show_shops.size();i++){
                    if( ((Vector)show_shops.get(i)).get(0).equals(rm.getString(1)) ){
                        String show_shop_style=(String)((Vector)show_shops.get(i)).get(1);
                %>
                <script>
                    shops_list[m]=new Array();
                    shops_list[m][0]="<%=rm.getString(1)%>";
                    shops_list[m][1]='<%=rm.getString(2)%>';
                    shops_list[m][2]=<%=rm.getString(3)%>;
                    shops_list[m][3]="<%=show_shop_style%>";
                    m=m+1;
                </script>
                <%
                    }
                    
                }
            }
            if(form_shop_id!=null){
                if(is_exit==0){
                    String sql_into = "insert into "+formuser+"(shop_id , shop_style) values('"+form_shop_id+"','"+form_shop_style_value+"')";
                    stm.executeUpdate(sql_into);
                }
            }
                
            
            
            
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
    <meta charset="UTF-8">
    <title>商品购物车</title>
    <link rel="stylesheet" href="./css/cart.css">
    
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
    <div class="tb">
        <div class="top_left">
           掀垫子柯基欢迎您|
           <a id="login_access" href="login.jsp" target="_new"><span style="color: orange;"> 请先登录</span></a>
           <a id="register_access" href="register.jsp" target="_new">   |  没有账号?点击注册</a>
           <span id="welcome_user"></span>
           <button id="leave_login" style="float: inline-end;font-size: 13px;background-color:plum;height: 25px;color: black;width: 100px "type="submit" onclick=outlog()>退出登陆</button>
        </div>
        
    </div>
    
    <div class="public-shop-cart">
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
        
        <div class="content" id="shop_content">
            <span>全部商品</span>
            <div class="cart-title">
                <span>
                    <input type="checkbox" id="all">
                    <label for="all">全选</label>
                </span>
                <span>商品</span>
                <span>单价</span>
                <span>数量</span>
                <span>小计</span>
                <span>操作</span>
            </div>

            
            
         </div>
        <div class="cart-btn">
            <span>总价：</span><span id="cart-all">&yen;14797.00 </span>
                <button class="btn" onclick="payShops()">去结算</button>
            </div>
        
    </div>
    <footer class="public-footer">
        <div>
            <p>2021 xdu.com. All rights reserved . 陕西掀垫子柯基小店版权所有</p>
            <p>陕ICP证111111号 陕ICP备11111111号-1 陕公网安备111122223333444号</p>
            <p>违法和不良信息举报电话: 0354-1234567 举报邮箱: 1234567@163.com</p>
        </div>
    </footer>
    <form id='hideform' action="del_manager.jsp" method="POST">
        <input id="del_account" type="hidden" value="#" name="del_account">
    
        <input id="del_shop_id" type="hidden" value="#" name="del_shop_id">
        <input id="del_shop_style" type="hidden" value="#" name="del_shop_style">
    </form>
    <form id='hideformm' action="settlement.jsp" method="POST">
        <input id="account_pay" type="hidden" value="#" name="account_pay">
        <input id="num_pay" type="hidden" value="#" name="num_pay">
        <input id="shop_id_stlyes" type="hidden" value="#" name="shop_id_stlyes">
    </form>
  </body>
    <script>
        var login_access=document.getElementById("login_access"); //登陆按钮
        var register_access=document.getElementById("register_access"); //注册按钮
        var welcome_user=document.getElementById("welcome_user"); //欢迎按钮
        var leave_login=document.getElementById("leave_login"); //退出登陆
        //console.log(shops_list);
        var shop_content=document.getElementById("shop_content"); //退出登陆
        
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
        function all_price(){
            var cart_all=document.getElementById("cart-all");
            var all_money=0;
            var all_shops=document.getElementById("shop_content").getElementsByClassName("cart-detail");
            for(var i=0;i<all_shops.length;i++){
            all_money=all_money+parseFloat(all_shops[i].childNodes[4].innerHTML.split("¥")[1]);
            }
            cart_all.innerHTML="&yen;"+all_money;
        }

        
        

        function numChange(event){
            console.log(event.target.parentNode.parentNode.childNodes[2]);
            var cart_price = event.target.parentNode.parentNode.childNodes[2];
            var cart_subtotal = event.target.parentNode.parentNode.childNodes[4];
            cart_subtotal.innerHTML="&yen;"+parseFloat(event.target.value)*parseFloat(cart_price.innerHTML.split("¥")[1]);
            // console.log(cart_price.innerHTML.split("¥")[1]);
            all_price();

        }
        function del_shop(obj){
            var ansswer = confirm("是否删除该商品?");     
            if(ansswer){
                var hideform=document.getElementById("hideform");
                var del_shop_id=document.getElementById("del_shop_id");
                var del_shop_style=document.getElementById("del_shop_style");
                var del_account=document.getElementById("del_account");

                del_shop_id.value=obj.parentNode.parentNode.childNodes[1].childNodes[1].getAttribute("name");
                del_shop_style.value=obj.parentNode.parentNode.childNodes[1].childNodes[2].innerHTML;
                del_account.value=login_account;

                hideform.submit();

                // console.log(hideform);
    
                
            }
        }

        //更新购物车
        for(var i=0;i<shops_list.length;i++){
            var shop_div = document.createElement("div");
            shop_div.setAttribute("class","cart-detail");

            var shop_input = document.createElement("input");
            shop_input.setAttribute("type","checkbox");

            var cart_title=document.createElement("div");
            cart_title.setAttribute("class","cart-title");
            var cart_img=document.createElement("img");
            cart_img.setAttribute("src","./picture/"+shops_list[i][0]+'.jpg');
            var cart_name=document.createElement("div");
            cart_name.setAttribute("name",shops_list[i][0]);
            cart_name.innerHTML=shops_list[i][1];
            var cart_style=document.createElement("span");
            cart_style.innerHTML=shops_list[i][3]
            cart_title.appendChild(cart_img);
            cart_title.appendChild(cart_name);
            cart_title.appendChild(cart_style);
           // console.log(cart_title);

            var cart_price = document.createElement("div");
            cart_price.setAttribute("class", "cart-price");
            cart_price.setAttribute("id", "cart-price");
            cart_price.innerHTML="&yen"+shops_list[i][2];

            var cart_number = document.createElement("div");
            cart_number.setAttribute("class", "cart-number");
            var cart_number_input = document.createElement("input");
            cart_number_input.setAttribute("oninput", "numChange(event)");
            cart_number_input.setAttribute("type", "text");
            cart_number_input.setAttribute("id", "mumber"+i);
            cart_number_input.setAttribute("value", "1");

            cart_number.appendChild(cart_number_input);

            var cart_subtotal = document.createElement("div");
            cart_subtotal.setAttribute("class", "cart-subtotal");
            cart_subtotal.setAttribute("id", "cart-subtotal");
            cart_subtotal.innerHTML="&yen"+shops_list[i][2];

            var cart_oprate = document.createElement("div");
            cart_oprate.setAttribute("class", "cart-oprate");
            var cart_oprate_button = document.createElement("button");
            cart_oprate_button.setAttribute("onclick", "del_shop(this)");
            cart_oprate.appendChild(cart_oprate_button);
            cart_oprate_button.innerHTML='删除';

            shop_div.appendChild(shop_input);
            shop_div.appendChild(cart_title);
            shop_div.appendChild(cart_price);
            shop_div.appendChild(cart_number);
            shop_div.appendChild(cart_subtotal);
            shop_div.appendChild(cart_oprate);
            shop_content.appendChild(shop_div);
            console.log(shop_content);
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
 

      function payShops(){
        var ansswer = confirm("是否支付?");
        if(ansswer){
            var hideformm=document.getElementById("hideformm");
            // console.log(shops_list);

            var account_pay=document.getElementById("account_pay");
            var num_pay=document.getElementById("num_pay");
            var shop_id_stlyes=document.getElementById("shop_id_stlyes");
            var Shops='0';
            for(var i=0;i<shops_list.length;i++){

                Shops=Shops+"&&"+shops_list[i][1]+"|"+shops_list[i][3]+"|"+document.getElementById("mumber"+i).value;
            }
            shop_id_stlyes.value=Shops;
            account_pay.value=login_account;
            num_pay.value=document.getElementById("cart-all").innerHTML.split("¥")[1];
            console.log(hideformm);
            hideformm.submit();


        }
      }

      
      all_price();


    </script>

</html>
