/*
 * package esc.interceptor;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
 * 
 * public class ESCInterceptor extends HandlerInterceptorAdapter {
 * 
 * @Override public boolean preHandle(HttpServletRequest request,
 * HttpServletResponse response, Object handler) throws Exception { HttpSession
 * session = request.getSession(); String userNo = (String)
 * session.getAttribute("userNo"); if(userNo == null || userNo.length()==0) {
 * response.sendRedirect("home.do"); return false; }
 * System.out.println("ESCInterceptor.preHandle()");
 * 
 * return true; } }
 */