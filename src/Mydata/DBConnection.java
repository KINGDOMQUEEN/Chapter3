package Mydata;

import java.sql.*;
import javax.sql.*;

public class DBConnection
{
   private Connection con=null;
   public Connection getConnection()
   {
	   try
	   {
		   Class.forName("com.mysql.jdbc.Driver");
		   String url="jdbc:mysql://localhost:3306/books?user=root&password=1";
		   con=DriverManager.getConnection(url);
	   }
	   catch(Exception e)
	   {
		   System.out.println("数据库连接出错："+e);
	   }
	   
		   return con;   
   }
}
