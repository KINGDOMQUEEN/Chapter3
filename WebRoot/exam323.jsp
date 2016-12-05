<%@ page language="java" import="java.util.*,java.sql.*,javax.sql.*" contentType="text/html;charset=GBK"%>

<html>
  <head>
   
  </head>
  
  <body>
   <%
             Connection con=null;
             PreparedStatement st=null;
             int counter=0;
             Savepoint p=null,p0=null,p1=null;
             try
             {
                 Class.forName("com.mysql.jdbc.Driver");
		         String url="jdbc:mysql://202.201.1.125:3306/books?user=root&password=welcome421&useUnicode=true&characterEncoding=GB2312";
		        con=DriverManager.getConnection(url);
		        String sql="insert into authors(au_id,au_name,phone,contract)value(?,?,?,?)";
		        st=con.prepareStatement(sql);

		        con.setAutoCommit(false);
		        
		        p0=con.setSavepoint("1");
		        counter=1;
		        st.setString(1,"333-33-4455");
		        st.setString(2,"Tomcat");
		        st.setString(3,"111 222-3333");
		        st.setString(4,"1");
		        st.executeUpdate();
		        
		        p1=con.setSavepoint("2");
		        counter=2;
		        st.setString(1,"2A2-33-4455");
		        st.setString(2,"Rose");
		        st.setString(3,"333 222-3333");
		        st.setString(4,"1");
		        st.executeUpdate();
		        
		        con.commit();
		        out.println("成功加入记录，请验证");
		  }
		  catch(Exception e)
		  {
		    out.println("出错："+e);
		    out.println("<br>回滚全部事务");
		    con.rollback();		    
		  
		  switch(counter)
		  {
		    case 1:
		          con.rollback(p0);
		          break;
		    case 2:
		          con.rollback(p1);
		          break;
		    default:con.rollback();
		          
		  }
	     }
		  finally
		  {
		    if(st!=null)
		      {
		        st.close();
		      }
		    if(con!=null)
		    {
		       con.setAutoCommit(true);
		       con.close();
		    } 
		   } 
		  
    %> 
  </body>
</html>
