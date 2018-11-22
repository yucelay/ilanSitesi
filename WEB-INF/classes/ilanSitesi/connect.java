package ilanSitesi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connect {
	
	public static Connection getConnection() {
		Connection con=null;
		try {
			try {
				Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/ilanSitesiDb","postgres","postgres");
			System.out.println("baglanti basarili");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("baglanti basarisiz!!!!");
			e.printStackTrace();
		}
		
		
		
		return con;
		
		
	}

}
