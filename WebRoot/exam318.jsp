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
                Class.forName("com.mysql.jdbc.Driver");
		        String url="jdbc:mysql://202.201.1.125:3306/books?user=root&password=welcome421&useUnicode=true&characterEncoding=GB2312";
		        con=DriverManager.getConnection(url);
		        String sql="insert into book(recID,title,type,price)values(?,?,?,?)";
		        st=con.prepareStatement(sql);
		        st.setString(1,"A1235");
		        st.setString(2,"Java EE企业应用开发技术");//Java EE企业应用开发技术
		       st.setString(3,"计算机类");//计算机类
		         st.setString(4,"65.8");
		   
		        st.executeUpdate();
		      }
		      catch(Exception e)
		      {
		       System.out.println("数据库连接出错："+e);
		      }
 %>
	    
		  
	</body>
</html>
