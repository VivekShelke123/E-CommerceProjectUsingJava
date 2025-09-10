package com.squad.eshop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletConfig;

public class DBConnection {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
//		String url="";
	String url = "jdbc:sqlserver://4ALT22H0075:1433;integratedSecurity=true;databaseName=EComDB;trustServerCertificate=true";
//		String url = "jdbc:sqlserver://4ALT23G0018\\SQLEXPRESS01:1433;integratedSecurity=true;databaseName=EComDB;trustServerCertificate=true";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url);
	}
}
