<%-- 
    Document   : edit
    Created on : Jan 24, 2018, 19:05:14 PM
    Author     : Administrator

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Bean.Member"%>
<%@page import="DAO.MemberDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Member</title>
    </head>
    <body>
        <%
          Member member = new Member();
          MemberDao memberuDao = new MemberDao();
        %>
        
        <form method="POST" action='ServletCRUD' name="frmEditBuku">
        <input type="hidden" name="action" value="update" /> 
        <%
         String id_member = request.getParameter("id_member");
         if (!((id_member) == null)) {
             int id = Integer.parseInt(id_member);
             mmeber = memberDao.findMemberById(id);
        %>
      <table>
         <tr>
            <td>ID Member</td>
            <td><input type="text" name="id_member" readonly="readonly" value="<%=member.getMemberID() %>"></td>
         </tr>
         <tr>
              <td>Nama</td>
              <td><input type="text" name="nama" value="<%=member.getNama()%>"></td>
         </tr>
         <tr>
              <td>Alamat</td>
              <td><input type="text" name="alamat" value="<%=member.getAlamat()%>"></td>
         </tr>
         <tr>
              <td>Tanggal Lahir</td>
              <td><input type="text" name="ttl" value="<%=member.getTtl()%>"></td>
         </tr>
         
         <tr>
              <td>Email</td>
              <td><input type="text" name="email" value="<%=member.getEmail()%>"></td>
         </tr>
   <tr>
              <td>Telpon</td>
              <td><input type="text" name="telpon" value="<%=member.getTelpon()%>"></td>
         </tr>
        <tr>
        <td></td>
          <td><input type="submit" value="Update" /></td>
        </tr>
</table>
<%
} else
out.println("ID Tidak Ditemnukan");
%>
</form>
    </body>
</html>
