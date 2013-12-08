package database;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class Conexao {
 
    private String connectionString;
    private String driverName = "com.mysql.jdbc.Driver";
    private String user;
    private String password;
    private Connection connection = null;
 
    public Conexao() {
        this.user = "root";
        this.password = "shx19q";
        connectionString = "jdbc:mysql://localhost:3306/locacar";
    }
 
    public Connection getConnection() throws SQLException {
        try {
            Class.forName(driverName);
            connection = DriverManager.getConnection(connectionString, user, password);
            return connection;
        }
        catch (ClassNotFoundException | SQLException ex){
            throw new SQLException(ex.getMessage());
        }
    }
 
    public void close() throws SQLException{
        try {
            connection.close();
        } catch (SQLException ex) {
            throw new SQLException(ex.getMessage());
        }
    } 
}
