package DAO;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import Bean.Buku;
import java.util.logging.Level;
import java.util.logging.Logger;
import myUtil.ConnectionDB;

public class MemberDao {
    
    private Connection conn;
    
    public MemberDao(){
        conn = ConnectionDB.getConnectionDB();
    }
    
    public void addMember(Member member){
        
        try {
            String insertQuery="insert into data_member(id_member, nama, alamat, ttl, email, telpon) values(?,?,?,?,?)";
        
            PreparedStatement prSt = conn.prepareStatement(insertQuery);
            prSt.setInt(1, member.getMemberID());
            prSt.setString(2, buku.getNama());
            prSt.setString(3, buku.getAlamat());
            prSt.setString(4, buku.getTtl());
	     prSt.setString(5, buku.getEmail());
            prSt.setString(6, buku.getTelpon());
                       
            prSt.executeUpdate();
        }  catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public void deleteMemberById(int memberID){
        try {
            String deleteQuery="delete from data_member where id_member=?";
            
            PreparedStatement prSt = conn.prepareStatement(deleteQuery);
            prSt.setInt(1, memberID);
            
            prSt.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public Member findMemberById(int memberID){
        
         Member member = new Member();
         try {
            String deleteQuery="select * from data_member where id_member=?";
            
            PreparedStatement prSt = conn.prepareStatement(deleteQuery);
            prSt.setInt(1, memberID);
            
            ResultSet rs = prSt.executeQuery();
            while(rs.next()){
                member.setMemberID(memberID);
                member.setNama (rs.getString(2));
                member.setAlamat(rs.getString(3));
                member.setTtl(rs.getString(4));
                member.setEmail(rs.getString(5));
   member.setEmail(rs.getString(6));
               
            }
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return member;
    }
    
    public void editMember(Member member){
        try {
            String editQuery="update data_member set nama=?, alamat=?, ttl=?, email=?, telpon=? where id_member=?";
            
            PreparedStatement prSt = conn.prepareStatement(editQuery);
            prSt.setString(1, member.getNama());
            prSt.setString(2, member.getAlamat());
            prSt.setString(3, member.getTtl());
            prSt.setString(4, member.getEmail());
     prSt.setString(5, member.getTelpon());
     prSt.setInt(6, member.getMemberID());
            
            prSt.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    }
    
    public List viewMember(){
        List xmember = new ArrayList();
        try {
            String retrieveQuery = "select * from data_member";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(retrieveQuery);
            while(rs.next()){
                 Member member = new Member();
                 member.setMemberID(rs.getInt(1));
                 member.setNama(rs.getString(2));
                 member.setAlamat(rs.getString(3));
                 member.setTtl(rs.getString(4));
                 member.setEmail(rs.getString(5));
                 member.setTelpon(rs.getString(6));

     xmember.add(member);
                 
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(BukuDao.class.getName()).log(Level.SEVERE, null, ex);
        }
         return xmember;
    }
}
