<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("Index.jsp");
%>