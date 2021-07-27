<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>掀垫子柯基</title>
    <link href="./css/style_index.css" rel="stylesheet" type="text/css" />
    <style>
         .content{

         display: block;
         width: 100%;
         margin: 11px 0;
         background-image: url(picture/pink.png); 
         background-size: 100% 100%;
         height: 160px;
      }
      .content div{
         margin:0 46%;
      }
      .content1{
         padding-top:50px;
         width: 100%;
         height: 300px;
         margin: 11px 1;
         background-color:rgb(240, 206, 217); 
         background-size: 100% 100%;
         
      }   
      .content2{
         padding-top:50px;
         width: 100%;
         margin: 11px 1;
         background-color: rgb(253, 222, 253);
         background-size: 100% 100%;
         height:300px;
      }
</style>
   </head>
<body>

  
        <center>
        <marquee height="50" width="100%" direction="left"  behavior="scroll"  bgcolor="pink">
            <font face="微软雅黑" size="+3" color="blueviolet" >欢迎光临本店，可在此页面进行选购</font>
        </marquee>   
        </center>
    
        <div class="tb">
          <div class="top_left">
             掀垫子柯基欢迎您|
             <a id="login_access" href="login.jsp" target="_new"><span style="color: orange;"> 请先登录</span></a>
             <a id="register_access" href="register.jsp" target="_new">   |  没有账号?点击注册</a>
             <span id="welcome_user"></span>
             <button id="leave_login" style="float: inline-end;font-size: 13px;background-color:plum;height: 25px;color: black;width: 100px "type="submit" onclick=outlog()>退出登陆</button>
          </div>
          <div class="top_right">
              <ul>
                  <li>我的喜好</li>
                  <a id="mycart" onclick="tocart()"><li>我的购物车</li></a>
                  <a href="#1"><li>项链专区</li></a>
                  <a href="#2"><li>花卉专区</li></a>
                  <a href="#email"><li>与我联系</li></a>
              </ul>
          </div>
      </div>
      <div>
      

    </div>
    
    <div class="content">
            <div>
               <table style="width: 240px;">
                  <tr align="center">
                     <td><img src="./picture/keji.png" width="180px" height="160px"></td>
                  </tr>
                  <tr>
                     <td><h1 style="color: blueviolet;">掀垫子柯基小店</h1></td>
                   </tr>
               </table>
               
            </div>
    </div>
     <br>
     <br>  
    <br>

    <h1 align="center"style="background: rgb(255, 169, 216); color: darkviolet;">项链专区</h1>
     <div align="center" class="content1">
      
         <table width=100% >
             <tr>
                <td align="center">
                   <img name='commodity1' id="pic1" onclick="enter_shop(this)" src="./picture/pic1.jpg" width="240" height="180"></td>
                <td align="center">
                   <img name='commodity2' id="pic2" onclick="enter_shop(this)" src="./picture/pic2.jpg" width="240" height="180"></td>             
                <td align="center">
                   <img name='commodity3' id="pic3" onclick="enter_shop(this)" src="./picture/pic3.jpg" width="240" height="180"></td>
                <td align="center">
                   <img name='commodity4' id="pic4" onclick="enter_shop(this)" src="./picture/pic4.jpg" width="240" height="180"></td> 
                <td align="center">
                   <img name='commodity5' id="pic5" onclick="enter_shop(this)" src="./picture/pic5.jpg" width="240" height="180"></td>
             </tr>
    
             <tr>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：200元 </p></td>        
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：100元</p></td>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：160元</p></a></td>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：230元</p></td>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：220元</p></td>
             </tr> 
    
             <tr>
                <td align="center"><p class="pos-abs">“喜上眉梢”项链 </p></td>        
                <td align="center"><p class="pos-abs">四叶草项链</p></td>
                <td align="center"><p class="pos-abs">“水晶之泪”项链</p></td>
                <td align="center"><p class="pos-abs">桃花项链</p></td>
                <td align="center"><p class="pos-abs">爱洛奇项链</p></td>
             </tr> 
          
                     
         </table> 
    </div>
    <br>
    <br>
    
    <a name="2"><h1 align="center" style="background: rgb(255, 169, 216); color: darkviolet;">花卉专区</h1></a>
    
    <div align="center"  class="content2">
        
        <table width=100% >
            <tr>
               <td align="center"><img name='commodity6' id="flo1" onclick="enter_shop(this)" src="./picture/flo1.png" width="240" height="180"></td>
               <td align="center"><img name='commodity7' id="flo2" onclick="enter_shop(this)" src="./picture/flo2.png" width="240" height="180"></td>             
               <td align="center"><img name='commodity8' id="flo3" onclick="enter_shop(this)" src="./picture/flo3.png" width="240" height="180"></td>
               <td align="center"><img name='commodity9' id="flo4" onclick="enter_shop(this)" src="./picture/flo4.png" width="240" height="180"></td> 
               <td align="center"><img name='commodity10' id="flo5" onclick="enter_shop(this)" src="./picture/flo5.png" width="240" height="180"></td>
            </tr>
            <tr>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：500元 </p></td>        
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：400元</p></td>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：560元</p></a></td>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：630元</p></td>
                <td align="center"><p style="margin-top: 0em;color: brown;">价格：420元</p></td>
             </tr> 
            <tr>
               <td align="center"><p class="pos-abs">粉色插花</p></td>        
               <td align="center"><p class="pos-abs">紫色插花</p></td>
               <td align="center"><p class="pos-abs">黄色插花</p></td>
               <td align="center"><p class="pos-abs">圆瓶插花</p></td>
               <td align="center"><p class="pos-abs">红色插花</p></td>
            </tr> 
                   
        </table> 

    </div>
    <form id='hideform' action="commodity.jsp" method="POST">
      <input id="shop_id" type="hidden" value="#" name="shop_id">
      <input id="login_state" type="hidden" value="#" name="login_state">
      <input id="account" type="hidden" value="#" name="account">
    </form>

    <form id='hideform_cart' action="cart.jsp" method="POST">
      <input type="hidden" value="#" name="login_account">
      <input type="hidden" value="#" name="login_state">
  </form>


    
    
    <center>
    
    <p style="color: darkorchid;"><a  name="email" href="mailto:2637689464@qq.com">点击可通过邮箱提出您的意见</a></p>
    <footer class="public-footer">
       <div>
           <a href="service.jsp">服务条款</a>
           <a href="privacy.jsp">隐私条款</a>
           <a href="payment_services.jsp">支付用户服务协议</a>
       </div>
       <div>
           <p>2021 xdu.com. All rights reserved . 陕西掀垫子柯基小店版权所有</p>
           <p>陕ICP证111111号 陕ICP备11111111号-1 陕公网安备111122223333444号</p>
           <p>违法和不良信息举报电话: 0354-1234567 举报邮箱: 1234567@163.com</p>
       </div>
    </footer>
       
    </center>

    <%
       String username = request.getParameter("username");
       String login_state = request.getParameter("login_state");
   %>

    <script type="text/javascript">
      var login_access=document.getElementById("login_access"); //登陆按钮
      var register_access=document.getElementById("register_access"); //注册按钮
      var welcome_user=document.getElementById("welcome_user"); //欢迎按钮
      var mycart=document.getElementById("mycart"); //购物车
      var leave_login=document.getElementById("leave_login"); //退出登陆
      var username="<%=username%>";
      var login_state="<%=login_state%>";
      console.log(login_state);
      console.log(username);
      console.log(typeof(username));
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

      function tocart(){
        var hideform_cart= document.getElementById("hideform_cart");
        console.log(hideform_cart);

        var t1=hideform_cart.children[0];
        var t2=hideform_cart.children[1];

        t1.value=username;
        t2.value=login_state;
        
        hideform_cart.submit();

    }

     function outlog(){
         var ansswer = confirm("确定退出登陆吗？");
         if(ansswer){
            window.location.href="login.jsp";
         }
     }
     function enter_shop(obj){
         var frm=document.getElementById("hideform");
         var frm_shopid=document.getElementById("shop_id");
         var frm_login_state=document.getElementById("login_state");
         var frm_account=document.getElementById("account");
         frm_shopid.value=obj.id;
         frm_login_state.value=login_state;
         frm_account.value=username;
         frm.submit();
      
        href_src="commodity.jsp";
        console.log(href_src);
        window.location.href=href_src+"?account="+ username+"&login_state="+login_state+"&shop_id="+obj.id;
     }
             
             
     function jiagou(){
             var r=confirm('确定将该商品加入购物车？');
             if(r==true){
                if(!login_state){
                   alert("请登陆再加入购物车");
                }
                else{
                  if(login_state=="0" || login_state=="null"){
                     alert("请登陆再加入购物车");
                  }
                  else{
                     alert("已经加入购物车");
                  }
                }
             }
            }
 
     function buy(){
             alert('确定直接购买该商品？')
            }
      function login_success(){
         login_access.style.display="none";
         register_access.style.display="none";
         welcome_user.style.display="inline";
         welcome_user.innerHTML=welcome_user.innerHTML+String(username);
         mycart.style.display="inline";
         leave_login.style.display="inline";
         console.log("login_success");
      }
      function login_failture(){
         login_access.style.display="inline";
         register_access.style.display="inline";
         welcome_user.style.display="none";
         mycart.style.display="none";
         leave_login.style.display="none";
         console.log("login_failture");
      }
   </script>
   </body>

    


</html>