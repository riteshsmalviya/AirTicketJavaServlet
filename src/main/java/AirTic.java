

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AirTic
 */
@WebServlet("/book")
public class AirTic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	PrintWriter out = response.getWriter();
    	out.println("<link href=\"https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css\"\r\n"
    			+ "	rel=\"stylesheet\">");
    	out.println("<div class=\"bg-green-100 border-t-4 border-green-500 rounded-b text-gray-900 px-4 py-3 shadow-md\" role=\"alert\">");
    	out.println("<div class=\"flex\">");
    	out.println("<div class=\"py-1\"><svg class=\"fill-current h-6 w-6 text-teal-500 mr-4\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 20 20\"><path d=\"M2.93 17.07A10 10 0 1 1 17.07 2.93 10 10 0 0 1 2.93 17.07zm12.73-1.41A8 8 0 1 0 4.34 4.34a8 8 0 0 0 11.32 11.32zM9 11V9h2v6H9v-4zm0-6h2v2H9V5z\"/></svg></div>");
    	out.println("<div>");
    	out.println("<p class=\"font-bold\">Booking successful!</p>");
    	out.println("<p class=\"text-sm\">Your ticket has been booked.<a class= text-xl href=\"view.jsp\"> Click here</a> to view your ticket details.</p>");
    	out.println("</div>");
    	out.println("</div>");
    	out.println("</div>");
    	out.println("<div class='flex justify-center items-center h-screen'>");
    	out.println("<img src='https://static.vecteezy.com/system/resources/previews/015/414/032/original/flying-plane-above-the-clouds-aircraft-in-the-sky-travel-concept-illustration-for-advertising-airline-website-to-search-for-air-tickets-travel-agency-traveling-flyer-banner-illustration-vector.jpg' class='w-1/2'>");
    	out.println("</div>");




        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String from = request.getParameter("from");
        String destination = request.getParameter("destination");
        String dot = request.getParameter("dot");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ritesh", "root", "ritesh");
            PreparedStatement ps = conn.prepareStatement(
                    "INSERT INTO bookings (fullname, email, mobile, from_city, destination, date_of_travel) VALUES (?, ?, ?, ?, ?, ?)");

            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, mobile);
            ps.setString(4, from);
            ps.setString(5, destination);
            ps.setString(6, dot);

            int result = ps.executeUpdate();

            if (result > 0) {
                response.setContentType("text/html");
                out.println("<script>alert('Ticket Booked Successfully!')</script>");
                RequestDispatcher rd = request.getRequestDispatcher("index.html");
                rd.include(request, response);
            }

            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
