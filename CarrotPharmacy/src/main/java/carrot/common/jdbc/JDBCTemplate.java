package carrot.common.jdbc;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCTemplate {
	
	public static Connection getConnection() {
		Connection connection = null;
		Properties porp = new Properties();
		
		String path = JDBCTemplate.class.getResource("./driver.properties").getPath();
		
		try {
			porp.load(new FileReader(path));
			Class.forName(porp.getProperty("db.driver"));
			
			String url = porp.getProperty("db.url");
			String name = porp.getProperty("db.username");
			String pw = porp.getProperty("db.password");
			connection = DriverManager.getConnection(url, name, pw);
			connection.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return connection;
	}
	
	
	public static void commit(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.commit();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void rollback(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.rollback();				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection connection) {
		try {
			if(connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement statusment) {
		try {
			if(statusment != null && !statusment.isClosed()) {
				statusment.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet resultSet) {
		try {
			if(resultSet != null && !resultSet.isClosed()) {
				resultSet.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
