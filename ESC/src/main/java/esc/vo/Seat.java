package esc.vo;

public class Seat {

	private String seatNum;
	private String userNo;
	private String reservationConfirmation;

	public String getReservationConfirmation() {
		return reservationConfirmation;
	}

	public void setReservationConfirmation(String reservationConfirmation) {
		this.reservationConfirmation = reservationConfirmation;
	}

	public String getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(String seatNum) {
		this.seatNum = seatNum;
	}

	public String getuserNo() {
		return userNo;
	}

	public void setuserNo(String userNo) {
		this.userNo = userNo;
	}

}