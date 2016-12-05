<%@ page language="java" import="java.util.*" contentType="text/html;charset=GB2312"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
  </head>
  
  <body>
  <!-- form action="account.jsp" method="post" name="regist" id="regist" -->
   <form action="/MyServlet/RegFormServlet" method="post" name="regist" id="regist">
    <p>会员注册：</p>
    <p><br>
      用户名：
      <input name="userName" type="text">
    </p>
    <p>
      
      密   码：
        <input name="password" type="password">
      <br>
      性   别：
      <input name="gender" type="radio" value="男" checked="true"/>
      男
      <input name="gender" type="radio" value="女" />
      女
      </p>
    <p>爱  好：<input name="hobby" type="checkbox" value="篮球" />
篮球　
  <input name="hobby" type="checkbox" value="羽毛球" />
羽毛球　
<input name="hobby" type="checkbox" value="排球" />
排球
　
<input name="hobby" type="checkbox" value="足球" />
足球</p>
    <p>开户行： 
     　<select name="bankAccount" size="1" id="bankAccount">
       <option value="1">中国银行</option>
       <option value="2">工商银行</option>
       <option value="3">建设银行</option>    </select>

    </p>
    <p>附 言：
      
      <label>
      <textarea name="memo" rows="3" id="memo"></textarea>
      </label>
      <label> 
      <input type="submit" name="Submit" value="提交">
      </label>
    </p>
  </form>
  
  </body>
</html>
