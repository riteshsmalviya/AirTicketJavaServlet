# ✈️ AirTicketJavaServlet - Online Flight Ticket Booking System

A complete web-based **airline ticket booking system** built with **Java Servlets** and **JSP**. This project demonstrates a full-stack Java web application for booking and managing flight tickets online with MySQL database integration.

## 🔍 Keywords
`java-servlet` `jsp` `flight-booking` `airline-reservation` `ticket-booking-system` `java-web-application` `mysql` `jdbc` `servlet-jsp` `online-booking` `travel-booking` `flight-reservation-system` `java-ee` `web-development` `tailwind-css`

## 📋 Features

- ✅ **Book Flight Tickets** - Users can book airline tickets by providing personal and travel details
- 🔎 **View Booking Details** - Retrieve and view booked tickets using mobile number and travel date
- 💾 **Database Persistence** - All bookings are stored in MySQL database
- 📱 **Responsive Design** - Modern UI with Tailwind CSS for mobile and desktop
- 🎨 **Clean Interface** - User-friendly forms and pages built with JSP

## 🛠️ Technologies Used

| Technology | Purpose |
|-----------|---------|
| **Java Servlets** | Backend request handling and business logic |
| **JSP (JavaServer Pages)** | Dynamic web pages and templating |
| **MySQL** | Database for storing booking information |
| **JDBC** | Database connectivity layer |
| **Tailwind CSS** | Modern, responsive UI styling |
| **Apache Tomcat** | Web server and servlet container |

## 📁 Project Structure

```
AirTicketJavaServlet/
├── src/main/
│   ├── java/
│   │   ├── AirTic.java              # Servlet for booking tickets
│   │   └── TicketViewServlet.java   # Servlet for viewing tickets
│   └── webapp/
│       ├── index.jsp                # Home page
│       ├── air.jsp                  # Booking form page
│       ├── view.jsp                 # Ticket search page
│       └── WEB-INF/
│           ├── web.xml              # Deployment descriptor
│           └── lib/                 # JAR dependencies
└── build/                           # Compiled classes
```

## 🗄️ Database Schema

**Database Name:** `ritesh`

**Table:** `bookings`

| Column | Type | Description |
|--------|------|-------------|
| fullname | VARCHAR | Passenger's full name |
| email | VARCHAR | Passenger's email address |
| mobile | VARCHAR | Passenger's mobile number |
| from_city | VARCHAR | Origin city |
| destination | VARCHAR | Destination city |
| date_of_travel | DATE | Travel date |

## 🚀 Setup Instructions

### Prerequisites
- Java Development Kit (JDK) 8 or higher
- Apache Tomcat 8.5 or higher
- MySQL Server 5.7 or higher
- A Java IDE (Eclipse, IntelliJ IDEA, or NetBeans)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/riteshsmalviya/AirTicketJavaServlet.git
   cd AirTicketJavaServlet
   ```

2. **Set up MySQL Database**
   ```sql
   CREATE DATABASE ritesh;
   USE ritesh;
   
   CREATE TABLE bookings (
       fullname VARCHAR(100),
       email VARCHAR(100),
       mobile VARCHAR(15),
       from_city VARCHAR(50),
       destination VARCHAR(50),
       date_of_travel DATE
   );
   ```

3. **Configure Database Connection**
   - Update database credentials in `AirTic.java` and `TicketViewServlet.java`
   - Default connection: `jdbc:mysql://localhost:3306/ritesh`
   - Username: `root`, Password: `ritesh` (modify as needed)

4. **Deploy to Tomcat**
   - Copy the project to Tomcat's `webapps` directory
   - Or deploy using your IDE's Tomcat integration
   - Start the Tomcat server

5. **Access the Application**
   - Open browser and navigate to: `http://localhost:8080/AirTicketJavaServlet/`

## 💻 Usage

### Booking a Ticket
1. Navigate to the home page
2. Click on "Book Ticket" or go to `air.jsp`
3. Fill in the booking form with:
   - Full Name
   - Email Address
   - Mobile Number
   - Origin City
   - Destination City
   - Date of Travel
4. Submit the form to complete booking

### Viewing Booking Details
1. Go to "View Ticket" page (`view.jsp`)
2. Enter your mobile number and travel date
3. Click "Search" to retrieve your booking details

## 🎯 Use Cases

This project is ideal for:
- Learning Java Servlet and JSP development
- Understanding JDBC and database integration
- Building web-based booking systems
- Student projects and portfolio demonstrations
- Understanding MVC architecture in Java web applications

## 🔧 Future Enhancements

- Add user authentication and authorization
- Implement payment gateway integration
- Add seat selection feature
- Email confirmation for bookings
- Admin panel for managing flights and bookings
- RESTful API for mobile app integration
- Input validation and error handling improvements
- Security enhancements (password encryption, SQL injection prevention)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This project is open source and available for educational purposes.

## 👨‍💻 Author

**Ritesh Rohit Global Travels** - Air Ticket Booking System

---

⭐ If you find this project helpful, please consider giving it a star!

**Related Topics:** Java Web Development, Servlet Programming, JSP Tutorial, Flight Booking System, Airline Reservation System, Java JDBC, MySQL Database, Web Application Development, Java EE, Travel Booking System
