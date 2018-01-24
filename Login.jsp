<%@ page import ="SoalK24.sql.*" %>
 
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SoalK24",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where username='" + username + "' and password='" + password + "'");
    if (rs.next()) {
        session.setAttribute("username", username);
        out.println("welcome " + username);
        out.println("<a href='Logout.jsp'>Log out</a>");
        response.sendRedirect("Done.jsp");
    } else {
        out.println("Invalid password <a href='Index.jsp'>try again</a>");
    }
%>