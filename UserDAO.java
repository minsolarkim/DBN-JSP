package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/BBS"; //mysql 서버 
			String dbID = "root";
			String dbPassword = "manager";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	
	//하나의 계정에 대한 로그인 시도를 해주는 함수를 만든 거임 
	public int login (String userID, String userPassword) { //int로 리턴
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery(); //결과를 담을 수 있는 객체에 실행 결과 넣어준다
			
			if (rs.next()) { //결과가 존재한다면
				if(rs.getString(1).equals(userPassword)) {
					return 1; //ㄱ로그인 성공
				}
				else {
					return 0;
				}
				
			}
			return -1; //아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
		
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); //insert는 executeUpdate();
										//반드시 0이상의 숫자가 반환 되기 때문에 -1이 아닌 경우에는 성공
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	

}
