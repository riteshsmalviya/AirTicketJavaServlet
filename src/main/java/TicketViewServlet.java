import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/TicketViewServlet")
public class TicketViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        String mobile = request.getParameter("mobilenum");
        String dateOfTravel = request.getParameter("dateoftravel");
        
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish a connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ritesh", "root", "ritesh");
            
            // Prepare a SELECT statement to fetch the booking details
            stmt = conn.prepareStatement("SELECT * FROM bookings WHERE mobile=? AND date_of_travel=?");
            stmt.setString(1, mobile);
            stmt.setString(2, dateOfTravel);
            
            // Execute the SELECT statement and get the result set
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                // Print the booking details
            	out.println("<head>");
            	out.println("<link href=\"https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css\" rel=\"stylesheet\">");
            	out.println("</head>");
            	out.println("<body class=\"bg-gray-100 flex items-center justify-center h-screen\">");
            	out.println("<div class=\"bg-white p-8 rounded-lg shadow-lg\">");
            	out.println("<h1 class='text-3xl font-bold mb-4 text-center'>Booking Details</h1>");
            	out.println("<p class='mb-2'><strong class='font-bold'>Name:</strong> " + rs.getString("fullname") + "</p>");
            	out.println("<p class='mb-2'><strong class='font-bold'>Email:</strong> " + rs.getString("email") + "</p>");
            	out.println("<p class='mb-2'><strong class='font-bold'>Mobile:</strong> " + rs.getString("mobile") + "</p>");
            	out.println("<p class='mb-2'><strong class='font-bold'>From City:</strong> " + rs.getString("from_city") + "</p>");
            	out.println("<p class='mb-2'><strong class='font-bold'>Destination:</strong> " + rs.getString("destination") + "</p>");
            	out.println("<p class='mb-2'><strong class='font-bold'>Date of Travel:</strong> " + rs.getString("date_of_travel") + "</p>");
            	out.println("<p class='mb-2'><strong class='font-bold'>Flight Number:</strong> " + "F3DS56AA");
            	out.println("<p class='mb-2'><strong class='font-bold'>Flight Name:</strong> " + "Air India");
            	out.println("</div>");
            	out.println("</body>");

            } else {
                out.println("<h1>No booking found for the provided mobile number and date of travel.</h1>");
            }
            
        } catch (Exception e) {
            e.printStackTrace(out);
        } finally {
            // Close the database resources
            try { rs.close(); } catch (Exception e) {}
            try { stmt.close(); } catch (Exception e) {}
            try { conn.close(); } catch (Exception e) {}
        }
        
        out.close();
    }
}
