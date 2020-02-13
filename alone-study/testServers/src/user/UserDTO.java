package user;

public class UserDTO {

	
	String userID;
	String userPw;
	
	// 현재 기록된 데이터를 가져오는 역할
	public String getUserID() {
		return userID;
	}
	
	// 데이터를 기록하는 역할
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
}
