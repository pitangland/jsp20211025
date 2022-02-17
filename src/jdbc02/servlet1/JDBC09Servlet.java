package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Employee;

/**
 * Servlet implementation class JDBC09Servlet
 */
@WebServlet("/jdbc02/s09")
public class JDBC09Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC09Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Employee> list = new ArrayList<>();
		
		
		// 2. request 분석
		
		// 3. business logic
		String sql = "SELECT LastName, FirstName FROM Employees";
		
		try (
			Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while (rs.next()) {
				Employee employee = new Employee();
				employee.setLastName(rs.getString(1));
				employee.setFirstName(rs.getString(2));
				
				list.add(employee);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// 4. add attribute
		request.setAttribute("list", list);
		
		// 5. forward
		String path = "/WEB-INF/view/jdbc02/v09.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
