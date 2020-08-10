package user.authentication;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigFactory;
import connection.DbConnection;
import connection.DbProperty;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginAuth {

    private static Config config;
    static {
        String fileName = "abc.conf";
        config = ConfigFactory.load(fileName);
    }

    public static DbProperty getDbProperties(){

        DbProperty dbProperty = new DbProperty();
        dbProperty.setIp(config.getString("dbInfo.ip"));
        dbProperty.setPort(config.getString("dbInfo.port"));
        dbProperty.setSid(config.getString("dbInfo.sid"));
        dbProperty.setUserName(config.getString("dbInfo.userName"));
        dbProperty.setUserPass(config.getString("dbInfo.pm_seed"));

        return dbProperty;
    }

    private String userName;
    private String pass;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    private static LoginAuth authUser;

    private LoginAuth() {
    }

    public static LoginAuth getInstance() {
        if (authUser == null) {
            authUser = new LoginAuth();
        }
        return authUser;
    }

    public static boolean userExistance(LoginAuth loginAuth) throws SQLException, ClassNotFoundException {

        boolean flag = false;

        DbConnection connection = DbConnection.getInstance();
        Connection con = connection.createConnection(getDbProperties());
        PreparedStatement ps = con.prepareStatement("SELECT EMP_LOGIN_ID, EMP_LOGIN_PSWD FROM REGISTERED_USERS where EMP_LOGIN_ID = ?");
        int i = 1;
        ps.setString(i++, loginAuth.getUserName());

        ResultSet rs = ps.executeQuery();

        while (rs.next()){
            if (rs.getString("EMP_LOGIN_ID").equalsIgnoreCase(loginAuth.getUserName()) &&
                    rs.getString("EMP_LOGIN_PSWD").equalsIgnoreCase(loginAuth.getPass())) {
                flag = true;
            }
        }
        return flag;
    }
}
