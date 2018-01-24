<%@ page import ="SoalK24.sql.*" %>
<%
    String nama = request.getParameter("nama");    
    String alamat = request.getParameter("alamat");
    String ttl = request.getParameter("ttl");
	String email = request.getParameter("email");
    String telpon = request.getParameter("telpon");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/SoalK24",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into user( username, password) values ('" + username + "','" + password + "')");
    
        response.sendRedirect("index.jsp");
       
%>