package esc.controller;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import esc.dao.CertDAO;
import esc.dao.ManagerDAO;
import esc.dao.StudentDAO;
import esc.vo.Reservation;
import esc.vo.Seat;
import esc.vo.User;

@Controller
public class ESCController {

	@Autowired
	ManagerDAO dao;

	@Autowired
	CertDAO certdao;

	@Autowired
	StudentDAO studentdao;

	///////////////////////////////////// 학생 페이지///////////////////////////////////// ///////////////////////////////////////////////////////////

	// [신청페이지] -[로그인 성공] 학생 메인화면으로 가기, 예약현황 리스트 띄우기
	@RequestMapping("/student_main.do")
	public String main(HttpServletRequest req) throws Exception {
		List<Reservation> reservlist = studentdao.getReservationUser();
		req.setAttribute("reservationList", reservlist);
		List<Seat> seatlist = studentdao.getReservListInSeat();
		req.setAttribute("seatList", seatlist);
//		System.out.println(seatlist.get(0));
//		System.out.println(seatlist.get(1));
		return "student/studentMain";
	}


	// [신청페이지] -[돌아가기 버튼] 학생 메인화면으로 가기, 예약현황 리스트 띄우기
	@RequestMapping("/go_main.do")
	public String goMain() throws Exception {
		return "student/studentMain";
	}
	
		////////////////// 관형 추가 부분 //////////////
		
		// [메인페이지] - [자습수정 버튼] 학생 수정화면으로 가기
		@RequestMapping("/modify_form.do")
		public String modify() throws Exception {
			return "student/studentModify";
		}
		
		// [신청페이지] - [신청 버튼] 학생 신청화면에서 신청버튼 누르기 (예약일자, 예약시간 추가하기)
		@RequestMapping("/modify.do")
		public String modifyAction(double reservationTime, HttpSession session, String reservationDate, HttpServletRequest req) throws Exception {
				System.out.println(reservationTime);
				studentdao.modifyReservationTime(reservationTime, session);
				List<Reservation> reservlist = studentdao.getReservationUser();
				studentdao.updateReservationReset(reservlist); // card값이 이미 부여된 상태에서 다음 예약자가 더 늦게까지 남아서 card값이 'Y'가 되어야 하는 경우 그 전에 부여된 card값을 'N'으로 수정하는 쿼리문
				studentdao.updateReservationConfirm(reservationDate); 
				List<Seat> seatlist = studentdao.getReservListInSeat();
				req.setAttribute("seatList", seatlist);
			return "redirect:/student_main.do";
		}
		
		////////////////////여기까지////////////////////////

	// [메인페이지] - [자습신청 버튼] 학생 신청화면으로 가기
	@RequestMapping("/form.do")
	public String form() throws Exception {
		return "student/studentApply";
	}

	// [철회페이지] - [자습철회 버튼] 학생 메인에서 자습철회하기
	@RequestMapping("/reserv_delete.do")
	public String delete(HttpSession session, String reservationDate) throws Exception {
		User us = (User) session.getAttribute("loginUser");
		Reservation res = new Reservation();
		res.setReservationDate(LocalDate.now().toString());
		studentdao.deleteReservation(us.getUserNo(), res.getReservationDate());
		studentdao.updateSeat(us.getUserNo());
		System.out.println("userno는" + us.getUserNo());
		System.out.println("reservationDate는" + res.getReservationDate());
		return "redirect:/student_main.do";
	}

	// [신청페이지] - [신청 버튼] 학생 신청화면에서 신청버튼 누르기 (예약일자, 예약시간 추가하기)
	@RequestMapping("/apply.do")
	public String apply(double reservationTime, HttpSession session, String reservationDate, HttpServletRequest req)
			throws Exception {
		System.out.println(reservationTime);
		studentdao.insertReservation(reservationTime, session);
		List<Reservation> reservlist = studentdao.getReservationUser();
		studentdao.updateReservationReset(reservlist); // card값이 이미 부여된 상태에서 다음 예약자가 더 늦게까지 남아서 card값이 'Y'가 되어야 하는 경우 그
														// 전에 부여된 card값을 'N'으로 수정하는 쿼리문
		studentdao.updateReservationConfirm(reservationDate);
		List<Seat> seatlist = studentdao.getReservListInSeat();
		req.setAttribute("seatList", seatlist);
		return "redirect:/student_main.do";
	}

	// [메인페이지] - [로그아웃 버튼]
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) throws Exception {
		session.setAttribute("loginUser", null);
		return "home/home"; // 최신파일 커밋하고 home/home으로 고쳐야 함
	}

	// [메인페이지] - [자습철회 버튼]
	@RequestMapping("/to_delete.do")
	public String student_delete() throws Exception {
		return "student/studentDelete";
	}

//		// [메인페이지] - [자리배치 테스트 버튼]
//		@RequestMapping("/student_position.do")
//		public String student_postion(HttpServletRequest req) throws Exception {
//			List<Reservation> reservlist = studentdao.getReservationUser();
//			req.setAttribute("reservationList", reservlist);
//			List<Seat> seatlist = studentdao.getReservListInSeat();
//			req.setAttribute("seatList", seatlist);
//			System.out.println(seatlist.get(0).getuserNo());
//			System.out.println(seatlist.get(1).getuserNo());
//			return "student/student_position_test";
//		}
//		
//		// [메인페이지] - [자리배치 테스트 버튼]
//		@RequestMapping("/student_position2.do")
//		public String student_postion2(HttpServletRequest req) throws Exception {
//			List<Reservation> reservlist = studentdao.getReservationUser();
//			req.setAttribute("reservationList", reservlist);
//			List<Seat> seatlist = studentdao.getReservListInSeat();
//			req.setAttribute("seatList", seatlist);
//			System.out.println(seatlist.get(0).getuserNo());
//			System.out.println(seatlist.get(1).getuserNo());
//			return "student/student_position_test2";
//		}

	///////////////////////////////////// 로그인,
	///////////////////////////////////// 회원가입///////////////////////////////////////////////////////////

	// 처음에 서버 실행시킬 때 /home.do 작성해서 home.jsp 페이지가 뜨도록 만들어 놓은 것.
	@RequestMapping(value = { "/", "/home.do" })
	public String tohome() {
		return "home/home";
	}

	// 회원가입 화면으로 전환되는 용도로 만든 것.
	@RequestMapping("/signup_form.do")
	public String tosignup_form() {
		return "home/signup";
	}

	/// 로그인 화면으로 전환되는 용도로 만든 것.
	@RequestMapping("/login_form.do")
	public String tologin_form() {
		return "home/login";
	}

    //로그인 할 때 데이터베이스에 있는 사용자인지 확인하는 용도로 만든 것. 따라서 로그인 버튼을 클릭했을 때 실행이 됨.
    @RequestMapping("/login.do")
    public String login(@RequestParam Map<String, Object> data, HttpSession session) throws Exception {  //매개변수가 2개이기 때문에 해쉬맵을 사용해서 key와 value로 넘긴 것. 이때 매개변수 타입의 경우, 모든 것을 포함할 수 있는 Object 타입을 value로 부여하게 된 것.   
       String userNo = (String)data.get("userNo");        //스프링을 사용하고 있는 상황이기 때문에 인풋태그의 name과 동일하다면 해쉬맵에 들어간 학번과 비밀번호를 뽑아낼 때 name을 키로 활용해서 뽑아낼 수 있게 됨. 즉, userNo라는 키를 활용하여 그 안에 들어있는 value를 뽑아내서 새로운 변수에 할당시켜준 것.
       String userPassword = (String)data.get("userPassword");
       
       System.out.println(userNo + ", " + userPassword); //해쉬맵에서 뽑아낸 내용이 제대로 변수에 담겼는지 확인하는 용도로 써놓은 코드
       
       if(userNo != null && userPassword !=null) {       //학번과 비밀번호에 어떠한 값이 입력이 되어있다면 데이터베이스에 있는 학생 정보와 동일한지 확인해야 함
          Map<String, Object> dataMap = new HashMap<>(); //마찬가지로 학번과 비밀번호 두 가지를 데이터베이스에 있는 내용과 동일한지 확인하고 싶기 때문에 매개변수가 2개인 상황. 따라서 해쉬맵을 사용해 하나의 객체에 그 두 개의 값을 넣어줘야 함.
          dataMap.put("userNo", userNo);               
          dataMap.put("userPassword", userPassword);
          
          User loginSuccessUser = certdao.login(dataMap); //학번과 비밀번호가 들어간 하나의 hashmap 객체 자체를 certdao의 login 함수의 매개변수로 활용한 것. 그리고 그 결과를 loginSuccessUser에 담아놓는데, 만약 데이터베이스에 학생의 정보가 있게 된다면 리턴값이 존재하게 될 것. 만약 그 정보에 해당하는 사람이 없다면 리턴값이 null 값이 될 것.
          System.out.println(loginSuccessUser);          
          
          if(loginSuccessUser != null) {              //로그인한 정보와 데이터 베이스에 학생의 정보와 일치하다는 소리이기 때문에 로그인 성공해야 함.  <09/18>!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 여기서부터 변경하긴 했는데 애매하면 내가 한 부분 싹 다 복붙하기
        	  session.removeAttribute("errorMessage"); // "해당하는 회원정보가 없습니다." 라는 에러 메시지를 뜨게 할 수 있는 errorMessage 를 제거함. 왜? 로그인 성공한 후 다시 로그아웃하여 로그인창 돌아왔을 때 저 메세지창이 남아있는 것이 싫으니까
        	  session.setAttribute("loginUser", loginSuccessUser); // 따라서 로그인 한 사람의 정보를 session에 저장한 것.
              System.out.println(loginSuccessUser.getUserName());
              
              String userCategory= loginSuccessUser.getCategory();    //여기서부터 코드 추가(09/18)
              
              if(userCategory.equals("student")) {
           	   return "redirect:/student_main.do";
              } else if(userCategory.equals("manager")) {
           	   return "redirect:/m_main.do";
              }
              
              
           } 
        	   
        
        }
		/*
		 * String errorMessage = "아이디와 비밀번호가 올바르지 않습니다. 올바른 정보로 입력해주시기 바랍니다.";
		 * session.setAttribute("errorMessage", errorMessage);
		 */
        return "home/loginErrorPage"; 
     }

    //회원가입창에서 회원가입 클릭 했을 때 데이터베이스에 update할 수 있도록 하기
  //회원가입창에 입력해놓은 값이 많으니 객체 자체를 매개변수로 활용하자.
  @RequestMapping("/signup.do")
  public String signup(User user, HttpSession session) {
     int checkSuccess = 0;  //만약 이 코드가 없게 되면 데이터베이스에 해당하는 사람이 없을 경우 리턴되는 값이 null일 텐데 처음부터 checkSuccess = certdao.check(user)를 해버리면 오류 뜰 것 같아서 미연에 방지한 것.
     checkSuccess = certdao.signup(user);
     
     if(checkSuccess != 0) {
  	  session.removeAttribute("errorMessage"); 
        return "home/login";
     } else {
        return "home/errorPage";
     }
  }

  //메인 홈페이지에서 자습내역으로 넘어갈 때 자습한 사람들의 대한 정보 필요해서 reservation 테이블의 리스트 받아온 것. 
  @RequestMapping("/m_stats.do")
  public String tomanagerStats(HttpSession session) throws Exception {
	   ////////////추가 코드///////////////////////   (09/18)
	   List<Reservation> list = dao.getListByReservation();
	   session.setAttribute("reservationlist", list);
	   return "manager/managerStats";	   
  }

	///////////////////////////////////// 매니저///////////////////////////////////////////////////////////

// 화면테스트용페이지
	@RequestMapping("/m_test.do")
	public String test() {
		return "manager/managerTest";

	}

	// 매니저 메인화면으로 가기
	@RequestMapping("/m_main.do")
	public String home(HttpServletRequest req) throws Exception {
		List<Reservation> reservlist = studentdao.getReservationUser();
		req.setAttribute("reservationList", reservlist);
		List<Seat> seatlist = studentdao.getReservListInSeat();
		req.setAttribute("seatList", seatlist);
		return "manager/managerMain";

	}

	// 학생 더 추가하기화면
	@RequestMapping("/m_insert_add.do")
	public String insertAdd() {
		return "manager/managerInsertAdd";

	}

	// 학생정보 입력화면으로 가기 managerInsert.jsp
	// 팝업창에서 더 추가하기를 선택한 경우
	@RequestMapping("/m_insert_form.do")
	public String managerinsert() {
		return "manager/managerInsert";

	}

	// managerInsert.jsp
	// 유저 정보 저장을 눌렀을 때 저장 기능 ----> 여기부분 해결 해야하는 상태
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(User ab) throws Exception {
		System.out.println(ab);
		dao.insertUser(ab);
		return "manager/managerInsertAdd";
	}

	// 학생 관리하러 가기 managerList.jsp
	@RequestMapping("/m_list.do")
	public String userlist(Model model) throws Exception {
		List<User> list = dao.getListByUser();
		model.addAttribute("userlist", list);
		System.out.println(list.get(0));
		return "manager/managerList";

	}

	// managerList에서 퇴소 버튼을 누른 경우
	@RequestMapping("/m_delete.do")
	public String deleteform(String userNo) throws Exception {
		System.out.println("userNo=" + userNo);
		dao.deleteUser(userNo);
		return "redirect:/m_list.do";
	}

	// 리스트에서 한명에 대한 정보 가져오기
	@RequestMapping("/getUserInfo.do")
	@ResponseBody
	public User getUserInfo(@RequestParam("userNo") String userId) {
		try {
			User user = dao.getUserInfoByUserId(userId);
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 상세정보 수정하기
	@RequestMapping(value = "/updateUserInfo.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateUserInfo(@RequestParam("userNo") String userNo,
			@RequestParam("userName") String userName, @RequestParam("gender") String gender,
			@RequestParam("dateOfBirth") String dateOfBirth, @RequestParam("address") String address) {
		Map<String, Object> result = new HashMap<>();

		try {
			// 사용자 정보 업데이트 로직을 수행하고 성공 여부를 확인합니다.
			boolean success = dao.updateUserInfo(userNo, userName, gender, dateOfBirth, address);
			if (success) {
				result.put("success", true);
			} else {
				result.put("success", false);
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.put("success", false);
		}

		return result;
	}

	@RequestMapping("/getUserData.do")
	@ResponseBody
	public List<User> getUserData() {
		try {
			List<User> userList = dao.getListByUser(); // 새로운 데이터를 가져오는 DAO 메서드 사용
			return userList;
		} catch (Exception e) {
			e.printStackTrace();
			return null; // 오류 발생 시 빈 리스트 반환
		}
	}


	// 사용자의 총 자습 시간 - 보험
    
	/*
	 * @RequestMapping("/getTotalStudyTime.do")
	 * 
	 * @ResponseBody public Map<String,
	 * Object>getTotalStudyTime(@RequestParam("userNo") String userNo) {
	 * Map<String,Object> result = new HashMap<>(); try { List<Double>
	 * totalStudyTime = dao.getTotalStudyTime(userNo); result.put("totalStudyTime",
	 * totalStudyTime); } catch (Exception e) { e.printStackTrace();
	 * result.put("totalStudyTime",null); } return result; }
	 */


	// 학생 자리 배치 managerPosition
	@RequestMapping("/m_position_form.do")
	public String list1(Model model) throws Exception {
		List<User> list = dao.getListByUser();
		model.addAttribute("userList", list);

		//////////////// 추가 코드 //////////////

		////////////// 추가 코드 ////////////////
		List<Seat> seats = dao.getSeats();

		// Jackson ObjectMapper를 사용하여 seats를 JSON 문자열로 변환
		ObjectMapper objectMapper = new ObjectMapper();
		String seatsJson = objectMapper.writeValueAsString(seats);

		// 모델에 JSON 문자열을 추가
		model.addAttribute("seatsJson", seatsJson);

		// model.addAttribute("seats", seats);
		return "manager/managerPosition";

	}

	// managerPosition.jsp
	// 좌석 배치가 끝난 후 완료 버튼을 눌렀을 때 input값을 db에 추가 해야한다

	@RequestMapping(value = "/m_assign.do", method = RequestMethod.POST)
	public String insertPosition(@RequestParam Map<String, Object> userData) throws Exception {

		System.out.println(userData);
		String[] userNoArray = new String[31];
		String[] seatNumArray = new String[31];

		for (int i = 1; i <= 31; i++) {

			userNoArray[i - 1] = (String) userData.get("userNo" + i);
			seatNumArray[i - 1] = (String) userData.get("seatNum" + i);

			Map<String, Object> dataMap = new HashMap<>();
			dataMap.put("userNo", userNoArray[i - 1]);
			dataMap.put("seatNum", seatNumArray[i - 1]);

			System.out.println(userNoArray[i - 1] + ", " + seatNumArray[i - 1]);

			dao.insertPositionSeat(dataMap);
			dao.insertPositionUser(dataMap);

		}

		return "manager/managerPositionAdd";
	}

}
