package esc.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import esc.vo.Reservation;
import esc.vo.User;

@Repository
public class CertDAO {
   
   @Autowired
   SqlSession session;
   

   //로그인 할 때 데이터베이스에 있는 사용자인지 확인
   public User login(@Param("dataMap") Map<String, Object> dataMap) throws Exception {
      return session.selectOne("login",dataMap);
       
   }
   
   /*
    * studentDAO에 똑같은 getReservationUser()함수가 있어서 이건 주석처리 해도 됨 //데이터베이스에 있는 사용자임을
    * 확인하고 reservation 테이블에 저장되어 있는 정보 가져와야 함 public List<Reservation>
    * getReservationUser() throws Exception { return
    * session.selectList("getReservation"); }
    */
   
   
      //회원가입 창에서 입력한 정보들을 가지고 user 테이블에 update? insert?해야 함 
    //insert에 적용된 행 자체의 수를 의미해야 하니까 리턴 타입 자체는 int?
    public int signup(User user) { 
       return session.update("signupUpdate", user);
    }
    

}