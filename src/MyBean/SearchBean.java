package MyBean;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SearchBean {
	Connection con;
	PreparedStatement pre;
	ResultSet rs;
	public SearchBean(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
	        
		} catch (ClassNotFoundException e) {
			// TODO �Զ����� catch ��
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/books?user=root&password=1&useUnicode=true&characterEncoding=GB2312");
		
		} catch (SQLException e) {
			// TODO �Զ����� catch ��
			e.printStackTrace();
		}
		
		
	}
	
	


	public ResultSet getSearchTitle(String title){
		ResultSet rs=null;
		//title=new String(title.getBytes("GBK"),"ISO8859_1"); // �ַ���ת�� 
		try {			
			Statement st=con.createStatement();
			String sql="select * from book where title like '%"+title+"%'";
			rs=st.executeQuery(sql);
					
		} catch (SQLException e){			
			e.printStackTrace();
		}
		return rs;
	}	
	
}

