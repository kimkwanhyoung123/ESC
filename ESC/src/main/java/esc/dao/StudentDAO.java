package esc.dao;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import esc.vo.Reservation;
import esc.vo.Seat;
import esc.vo.User;

@Repository
public class StudentDAO {

	@Autowired
	SqlSession session1;

	public int insertReservation(double reservationTime, HttpSession session) throws Exception {
		
		User us = (User) session.getAttribute("loginUser");
		System.out.println("이거 널 아니겠지?" + us);
		Reservation res = new Reservation();
		res.setSeatNum(us.getSeatNum()); // session에 저장한 ""이름으로 가져옴. "user"면 user.getSeatNum()
		res.setReservationDate(LocalDate.now().toString()); // 고정
		res.setReservationTime(reservationTime); // 고정
		res.setUserNo(us.getUserNo()); // session에 저장한 ""이름으로 가져옴. "user"면 user.getUserNo()
		res.setCard(res.getCard());
		System.out.println(res.toString());
		return session1.insert("insertReservation", res);
	}
	
	//////////////////////////////////  관형 추가부분 //////////////////////////
	public int modifyReservationTime(double reservationTime, HttpSession session) throws Exception {
		
		User us = (User) session.getAttribute("loginUser");
		System.out.println("이거 널 아니겠지?" + us);
		Reservation res = new Reservation();
		res.setSeatNum(us.getSeatNum()); // session에 저장한 ""이름으로 가져옴. "user"면 user.getSeatNum()
		res.setReservationDate(LocalDate.now().toString()); // 고정
		res.setReservationTime(reservationTime); // 고정
		res.setUserNo(us.getUserNo()); // session에 저장한 ""이름으로 가져옴. "user"면 user.getUserNo()
		System.out.println(res.toString());
		return session1.update("modifyReservationTime", res);
	}

	/////////////////////////////////////여기까지//////////////////////////////
	
	public List<Reservation> getReservationUser() throws Exception {
		return session1.selectList("getReservationUser");

	}

	public void deleteReservation(String userNo, String reservationDate) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("userNo", userNo);
		paramMap.put("reservationDate", reservationDate);
		session1.delete("deleteReservation", paramMap);
	}
	
	public void updateSeat(String userNo) throws Exception {
		session1.update("updateSeat", userNo);
	}

	
	 public void updateReservationReset(List<Reservation> reservlist) {
	 session1.update("updateReservationReset"); }
	
	
	public void updateReservationConfirm(String reservationDate) {
		session1.update("updateReservationConfirm", reservationDate);
	}
	
	public List<Seat> getReservListInSeat() {
		return session1.selectList("getReservListInSeat");
	}
	
	
	

}
