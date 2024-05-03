package esc.vo;

public class User {

	private String userNo;
	private String userName;
	private String gender;
	private String dateOfBirth;
	private String userPassword;
	private String userPasswordCheck;    //<09/18> 추가한 코드 오류 생기면 지우기
	private String seatNum;
	private double distance;
	private String category;
	private String address;

	
	
	
	public String getUserPasswordCheck() {
		return userPasswordCheck;
	}

	public void setUserPasswordCheck(String userPasswordCheck) {
		this.userPasswordCheck = userPasswordCheck;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public double getDistance() {
		return distance;
	}

	public void setDistance(double distance) {
		this.distance = distance;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userName=" + userName + ", gender=" + gender + ", dateOfBirth="
				+ dateOfBirth + ", userPassword=" + userPassword + ", seatNum=" + seatNum + ", distance=" + distance
				+ ", category=" + category + ", address=" + address + "]";
	}

	
}
