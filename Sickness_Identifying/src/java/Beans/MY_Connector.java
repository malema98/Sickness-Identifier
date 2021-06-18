
package Beans;

import com.mysql.cj.jdbc.MysqlDataSource;
import com.sun.istack.internal.logging.Logger;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;

public class MY_Connector 
{
    private static String servername="localhost";
    private static String DBname="Sickness Identifier";
    private static String username="root";
    private static String password="";
    private static Integer portnumber=3306;
    
    public static Connection getConnection()
    {
      Connection conn=null;
        MysqlDataSource datasource=new MysqlDataSource();
        datasource.setServerName(servername);
        datasource.setDatabaseName(DBname);
        datasource.setUser(username);
        datasource.setPortNumber(portnumber);
        datasource.setPassword(password);

      try 
        {
            conn=datasource.getConnection();
        } 
        catch (SQLException ex)
        {
            java.util.logging.Logger.getLogger("Get Connection -> " + MY_Connector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
}
