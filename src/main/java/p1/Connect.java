package p1;
import java.sql.*;


public class Connect {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public Connect() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eds","root","");
			} catch (Exception e ) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	
	public boolean saveFreeRegRecord(String uname, String email, String phnno, String pwd) {
		boolean b = false;
		String sql = "insert into tbl_free_reg(uname, email, phnno, pwd) values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, phnno);
			ps.setString(4, pwd);
			
			int n;
			n = ps.executeUpdate();
			if(n>0) {
				b = true;
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return b;
		
	}
	
	public boolean checkUserRecord(String email, String pwd) {
		boolean b = false;
		try {
			String sql = "select * from tbl_free_reg where email=? and pwd=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pwd);
			rs=ps.executeQuery();
			if(rs.next())
			{
				b = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	public boolean checkDuplicateUser(String email)
	{
		boolean b=false;
		try {
			String sql="select email from tbl_free_reg where email=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, email);
			rs=ps.executeQuery();
			if(rs.next())
			{
				b = true;
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
	}
}
