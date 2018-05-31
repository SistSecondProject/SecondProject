

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

import org.mindrot.jbcrypt.BCrypt;

public class PWencrypt {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
			Connection conn = DriverManager.getConnection(url, "scott", "tiger");

			Scanner scan = new Scanner(System.in);
			while (true) {
				System.out.println("종료하려면 x");
				System.out.print("ID:");
				String id = scan.nextLine();
				if (id.equals("x"))
					break;
				System.out.print("PW:");
				String pw = scan.nextLine();

				String line = "UPDATE member SET password = ? WHERE userid= ?";

				PreparedStatement ps = conn.prepareStatement(line);
				ps.setString(1, BCrypt.hashpw(pw, BCrypt.gensalt()));
				ps.setString(2, id);
				try {
					ps.executeUpdate();
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
