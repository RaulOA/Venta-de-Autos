package Logic;

import java.sql.*;

public class AccountInfo {

    public static String email = "Default@default.com";
    public static boolean flag = false;
    public static String password, make, model, body, name, lastname;
    public static int year, price, phone;

    public void ownerdata(String email) {
        ResultSet resultset = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crcars", "root", "ne5ddd90");
            Statement statement = con.createStatement();
            resultset = statement.executeQuery("select * from clients WHERE clientemail = '"+email+"'");
            resultset.next();
            AccountInfo.name = resultset.getString("clientname");
            AccountInfo.lastname = resultset.getString("clientlastname");
            AccountInfo.phone = resultset.getInt("clientphone");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
