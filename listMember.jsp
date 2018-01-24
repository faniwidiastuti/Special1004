<%-- 
    Document   : listMember
    Created on : Jan 24, 2018, 19:45:28 PM
    Author     : Administrator 
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Bean.Member"%>
<%@page import="DAO.MemberDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Member</title>
    </head>
    <body>
        <%
         MemberDao MemberDao = new MemberDao();
         List <Member> listMember = memberDao.viewMember();                
        %>
    <table border="1">
<tr>
     <th>ID Member</th>
     <th>Nama</th>
     <th>Alamat</th>
     <th>Tanggal Lahir</th>
     <th>Email</th>
     <th>Telpon</th>
     <th colspan="2"> Action </th>
</tr>
<tr>
<%
for (Member member : listMember) {
%>
<td><%=member.getMemberID() %></td>
<td><%= member.getNama() %></td>
<td><%= member.getAlamat() %></td>
<td><%= member.getTtl() %></td>
<td><%= member.getEmail()%></td>
<td><%= member.getTelpon()%></td>

<td><a href="ServletCRUD?action=editform&id_member=<%=member.getMemberID() %>">Update</a></td>
<td><a href="ServletCRUD?action=delete&id_member=<%=member.getMemberID() %>">Delete</a></td>
</tr>
<%
}
%>
</table>
<p><a href="ServletCRUD?action=insert">Add Member</a></p>
</body>
</html>
