package jdbc;

import javax.servlet.ServletException;

public class OracleDriverLoader {
	public void init(ServletException config) throws ServletException{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex) {
			throw new ServletException(ex);
		}
	}
}
