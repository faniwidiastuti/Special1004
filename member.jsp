<%-- 
    Document   : member
    Created on : Jan 24, 2018, 18:35:33 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Member</title>
    </head>
    <body>
<form method="POST" action='ServletCRUD' name="frmAddUser">
<input type="hidden" name="action" value="insert" />
    <p><b>Add New Record</b></p>
    <table>
    <tr>
        <td>ID Member</td>
        <td><input type="text" name="id_member" /></td>
    </tr>
    <tr>
        <td>Nama</td>
        <td><input type="text" name="nama" /></td>
    </tr>
    <tr>
         <td>Alamat</td>
         <td><input type="text" name="alamat" /></td>
    </tr>
    <tr>
         <td>Tanggal Lahir</td>
         <td><input type="text" name="ttl" /></td>
    </tr>
     
    <tr>
         <td>Email</td>
         <td><input type="text" name="email" /></td>
    </tr>
    <tr>
         <td>Telpon</td>
         <td><input type="text" name="telpon" /></td>
    </tr>

     <tr>
         <td></td>
          <td><input type="submit" value="Submit" /></td>
     </tr>
</table>
</form>
<p><a href="ServletCRUD?action=retrieve">View-All-Records</a></p>
</body>
</html>
