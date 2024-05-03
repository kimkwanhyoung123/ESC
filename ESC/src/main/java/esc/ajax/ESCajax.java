package esc.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ESCajax")
public class ESCajax extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   @Override
      protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         resp.setContentType("application/json;charset=UTF-8");
         PrintWriter out = resp.getWriter();
         String param = req.getParameter("dateType");
         String result = null;
         if(param.equals("day")) {   // param이 "day"와 같으면 다음 JSON 문자열을 생성.
            //result = "<input type=\"date\" name=\"reservationDate\">";
            
            result = "{\"input\": \"<input type=\"date\" name=\"reservationDate\">\"}";

         } else if(param==null || param.equals("month")) {
            result = "{\"january\":\"1월\", \"february\":\"2월\", \"march\":\"3월\", \"april\":\"4월\", \"may\":\"5월\", \"june\":\"6월\", \"july\":\"7월\", \"august\":\"8월\", \"september\":\"9월\", \"october\":\"10월\", \"november\":\"11월\", \"december\":\"12월\"}";
         out.println(result);
         out.close();
      }

   }
   
   
   
/*   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String query= request.getParameter("type");
      response.setContentType("application/json;charset=UTF-8");
      PrintWriter out= response.getWriter();
      String param= request.getParameter("type");
      String result=null;
      if(param==null|| param.equals("saladbar")){
         result= "{\"ashley\":\"애슐리\",\"lblue\":\"엘블루\"}";
      } else {
         result= "{\"sodam\":\"소담\",\"babnbool\":\"밥앤불고기\"}";
      }
      //String result="sample test";
      out.println(result);
      out.close();
   }
*/
   
}