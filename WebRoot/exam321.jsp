<%@ page language="java" import="java.util.*,java.sql.*,javax.sql.*" contentType="text/html;charset=GBK"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    

  </head>
  
  <body>
    <% String title_id=request.getParameter("title_id");
       String title=request.getParameter("title");
      String type=request.getParameter("type");
       String price=request.getParameter("price");
     //  out.print(title_id+","+title+","+type+","+price);
      Connection con=null;
      CallableStatement st=null;
      ResultSet rs=null;

      try
      {
        Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/books?user=root&password=1&useUnicode=true&characterEncoding=GB2312";
		con=DriverManager.getConnection(url);
		String sql="{call NewRecord(?,?,?,?)}";
		st=con.prepareCall(sql);
		st.setString(1,title_id);
		st.setString(2,title);
		st.setString(3,type);
		st.setString(4,price);
		int n=st.executeUpdate();
        out.print(n); 
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
