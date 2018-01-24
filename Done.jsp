<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
Anda Belum login <br/>
<a href="Index.jsp">Silahkan Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='Logout.jsp'>Log out</a>
<%
    }
%>