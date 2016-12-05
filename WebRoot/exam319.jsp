<%@ page language="java" import="java.util.*,java.sql.*,javax.sql.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   

  </head>
  
  <body>
   <%
      Connection con=null;
      CallableStatement st=null;
      ResultSet rs=null;
      try
      {
        Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://202.201.1.125:3306/books?user=root&password=welcome421&useUnicode=true&characterEncoding=GB2312";
		con=DriverManager.getConnection(url);
		String sql="{call pro1(?)}";
		st=con.prepareCall(sql);
		st.setString(1,"java"); //"%Java%"
		rs=st.executeQuery();
		while(rs.next())
		{
		  out.print(rs.getString(1));
		  out.print(rs.getString(2));
		  out.print(rs.getString(3));
		  out.print("<br>");
		}
		}
		catch(Exception e)
		{
		  out.print("数据库操作出错："+e);
		  }
		finally  
		{ 
		  if(rs!=null)
		    rs.close();
		  if(st!=null)
		     st.close();
		  if(con!=null)
		      con.close();  
		}
		
		        
      
       %>
  </body>
</html>
