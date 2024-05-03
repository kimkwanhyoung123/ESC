package esc.vo;

public class Reservation {

	private String reservationDate;
	private double reservationTime;
	private String seatNum;
	private String userNo;
	private String card;
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public String getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	public double getReservationTime() {
		return reservationTime;
	}

	public void setReservationTime(double reservationTime) {
		this.reservationTime = reservationTime;
	}


	public String getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

}