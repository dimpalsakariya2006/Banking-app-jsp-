package bankingwithjsp;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ConnectionListener implements ServletContextListener {

  

	
    public void contextDestroyed(ServletContextEvent sce)  { 
   
        ServletContext sc  = sce.getServletContext();
        Connection con = (Connection) sc.getAttribute("connection");
        try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    }

	
    public void contextInitialized(ServletContextEvent sce)  { 
        
    	try { 
        	Class.forName("com.mysql.cj.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingjsp","root","Nikunj.007");
    		
    		ServletContext sc  = sce.getServletContext();
    		sc.setAttribute("connection", con);
    		
    		
           } catch(Exception e)
           {
        	   e.printStackTrace();
           }
        }
    }
