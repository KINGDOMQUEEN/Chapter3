<%@ page language="java" import="java.util.*,java.sql.*,javax.sql.*" contentType="text/html;charset=GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

	</head>

	<body>
		<%
             Connection con=null;
             PreparedStatement st=null;
             ResultSet rs=null;
             try
             {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		        String url="jdbc:sqlserver://localhost:1433;databaseName=pubs;user=sq;password=";
		        con=DriverManager.getConnection(url);
		        String sql="insert into titles(title_id,title,type,price,pubdate)value(?,?,?,?,?)";
		        st=con.prepareStatement(sql);
		        st.setString(1,"AK9988");
		        st.setString(2,"Java EE 企业应用开发技术");
		        st.setString(3,"计算机类");
		        st.setDouble(4,65.8);
		        st.setString(5,"2006-3-20");
		        st.executeUpdate();
		      }
		      catch(Exception e)
		      {
		       System.out.println("数据库连接出错："+e);
		      }
		      finally
		      {
		        con.close();
		      }
		      
		        
		        
		        
   %>
	</body>
</html>
