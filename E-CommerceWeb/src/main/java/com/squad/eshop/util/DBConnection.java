package com.squad.eshop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:sqlserver://4ALT23G0018\\SQLEXPRESS01:1433;integratedSecurity=true;databaseName=EcomDB;trustServerCertificate=true";
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url);
	}
}
