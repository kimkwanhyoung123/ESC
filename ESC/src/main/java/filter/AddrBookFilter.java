/*
 * package filter;
 * 
 * import java.io.IOException; import javax.servlet.Filter; import
 * javax.servlet.FilterChain; import javax.servlet.FilterConfig; import
 * javax.servlet.RequestDispatcher; import javax.servlet.ServletException;
 * import javax.servlet.ServletRequest; import javax.servlet.ServletResponse;
 * import javax.servlet.annotation.WebFilter; import
 * javax.servlet.http.HttpFilter;
 * 
 * @WebFilter("/AddrBookFilter") 
 * public class AddrBookFilter extends HttpFilter implements Filter {
 * 
 * public void doFilter(ServletRequest request, ServletResponse response,
 * FilterChain chain) throws IOException, ServletException { //
 * System.out.println("start of AddrBookFilter.doFilter()");
 * chain.doFilter(request, response); //
 * System.out.println("end of AddrBookFilter.doFilter()");
 * 
 * }
 * 
 * 
 * }
 */