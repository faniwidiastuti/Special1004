package myServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.MemberDao;
import Bean.Member;
import javax.servlet.RequestDispatcher;

public class ServletCRUD extends HttpServlet {
    private static String Insert = "/member.jsp";
    private static String Edit = "/edit.jsp";
    private static String ListBuku = "/listmember.jsp";
    
    private MemberDao memberDao;
    public ServletCRUD (){
        super();
        memberDao = new MemberDao();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String redirectURL="";
        String id_member = request.getParameter("id_member");
        System.out.println("ID Member"+id_member);
        String act=request.getParameter("action");
        
        if(id_member != null && act.equalsIgnoreCase("insert")){
            int id = Integer.parseInt(id_member);
            Member member = new Member();
            member.setMemberID(id_member);
            member.setNama(request.getParameter("nama"));
            member.setAlamat(request.getParameter("alamat"));
            member.setTtl(request.getParameter("ttl"));
     member.setEmail(request.getParameter("email"));
     member.setTelpon(request.getParameter("telpon"));

            memberDao.addMember(member);
            redirectURL = ListMember;
            request.setAttribute("members", memberDao.viewMember());
            System.out.println("Data Berhasil Ditambahkan");
            
        } else if(act.equalsIgnoreCase("delete")) {
            int id = Integer.parseInt(id_member);
            memberDao.deleteMemberById(id);
            redirectURL = ListMember;
            request.setAttribute("members", memberDao.viewMember());
            System.out.println("Data BerhasiL Dihapus");
            
        } else if(act.equalsIgnoreCase("retrieve")){
           redirectURL = ListMember;
           request.setAttribute("members", memberDao.viewMember());
        }else if (act.equalsIgnoreCase("editform")){         
                redirectURL = Edit;
        } else if(act.equalsIgnoreCase("update")){
            
            System.out.println("Im Here" +id_member);
            int id = Integer.parseInt(id_member);
            Member member = new Member();
            member.setMemberID(id_member);
            member.setNama(request.getParameter("nama"));
            member.setAlamat(request.getParameter("alamat"));
            member.setTtl(request.getParameter("ttl"));
     member.setEmail(request.getParameter("email"));
     member.setTelpon(request.getParameter("telpon"));

            
            memberDao.editMember(member);
            request.setAttribute("member", member);
            redirectURL = ListMember;
            System.out.println("Record updated Successfully");
        } else {
            redirectURL= Insert;
        }
        
        
        RequestDispatcher rd = request.getRequestDispatcher(redirectURL);
        rd.forward(request, response);
        }
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }
}
