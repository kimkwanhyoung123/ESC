package esc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import esc.vo.Reservation;
import esc.vo.Seat;
import esc.vo.User;
import esc.vo.UserStatics;

@Repository
public class ManagerDAO {

	@Autowired
	SqlSession session;

	public int insertUser(User ab) throws Exception {
		return session.insert("insertUser", ab);
	}

	public List<User> getListByUser() throws Exception {
		return session.selectList("getListByUser");

	}

	public void deleteUser(String id) throws Exception {
		session.delete("deleteUser", id);

	}

	public List<User> getPositionListByUser() throws Exception {
		return session.selectList("getPositionListByUser");

	}

	// 여기 테이블이 다른데 파라미터가 User가 맞는 지 ??? + 파라미터 명 ab를 위 인서트랑 같아도 괜찮은 지
	public int insertPositionUser(Map<String, Object> dataMap) throws Exception {
		return session.update("insertPositionUser", dataMap);
	}
	
	
	public int insertPositionSeat(Map<String, Object> dataMap) throws Exception {
	return session.update("insertPositionSeat", dataMap); 
	}
	 
	// 1. 좌석 정보 가져오기
	public List<Seat> getSeats() throws Exception {
		return session.selectList("getSeats");
	}

	// 2. 좌석 배치 적용하기
	public int updateSeats(Seat seat) throws Exception {
		return session.update("updateSeats", seat);
	}

	public List<Reservation> getDateList(String date) {
		return session.selectList("getDateList", date);
	}

	public List<Reservation> getMonthList(int month) {
		return session.selectList("getMonthList", month);
	}

	public User getUserInfoByUserId(String userId) throws Exception {
		return session.selectOne("getUserInfoByUserId", userId);
	}

	public boolean updateUserInfo(String userNo, String userName, String gender, String dateOfBirth, String address)
	         throws Exception {
	      Map<String, Object> params = new HashMap<>();
	      params.put("userNo", userNo);
	      params.put("userName", userName);
	      params.put("gender", gender);
	      params.put("dateOfBirth", dateOfBirth);
	      params.put("address", address);

	      int updatedRows = session.update("updateUserInfo", params);
	      return updatedRows > 0;
	   }


	// 사용자의 총 자습 시간을 가져오는 메서드 추가 보험
	   
	/*
	 * public List<Double> getTotalStudyTime(String userNo) throws Exception {
	 * return session.selectList("getTotalStudyTime", userNo); }
	 * 
	 */
	//추가한 코드(09/18)
	public List<Reservation> getListByReservation() throws Exception {
		return session.selectList("getListByReservation");
		
	}
	
	// 사용자의 총 자습 시간 랭킹 가져오는 메서드 추가
	
	public UserStatics getStudyStatsByUserNo(String userNo) {
	      return session.selectOne("getStudyStatsByUserNo", userNo);
	   }
	
}
