package MyBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionDB {

	/**
	 * 
	 * 获取连接
	 */
	/*
	 * Context ctx = new InitialContext();
	 * 
	 * DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/goodsdata");
	 * 
	 * 
	 * Connection conn = ds.getConnection(); return conn;
	 * 
	 * }
	 */

	public static Connection getConnection() {
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager
					.getConnection("jdbc:mysql://202.201.1.125:3306/books?user=root&password=welcome421&useUnicode=true&characterEncoding=GB2312");
		} catch (ClassNotFoundException e) {
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void ColseDB(Connection conn, PreparedStatement pstmt,
			ResultSet rs) {
		try {
			if (conn != null) {
				conn.close();
				if (pstmt != null) {
					pstmt.close();
				}
				if (rs != null) {
					rs.close();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static void CloseConn(Connection conn, PreparedStatement pstmt) {
		try {
			if (conn != null) {
				conn.close();
				if (pstmt != null) {
					pstmt.close();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public static void main(String[] args){
		Connection conn = getConnection();
		if(conn!=null)
			System.out.println("数据库连接成功！");
	}
}
