package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

    private static DbConnection connection;

    private DbConnection() {
    }

    public static DbConnection getInstance() {
        if (connection == null) {
            connection = new DbConnection();
        }
        return connection;
    }

    public Connection createConnection(DbProperty dbProperty) throws ClassNotFoundException, SQLException {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection connection =
                DriverManager.getConnection("jdbc:oracle:thin:@" + dbProperty.getIp() + ":" +
                        dbProperty.getPort() + ":" + dbProperty.getSid(), dbProperty.getUserName(), dbProperty.getUserPass());

        if (connection == null)
            throw new RuntimeException("unable to acquire DB Connection ...");

        return connection;
    }
}
