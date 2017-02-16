package command;

import dao.BDao;
import dto.BDto;
import dto.UDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jeonjin-il on 2017. 2. 11..
 */
public class BIsModifyCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession(true);
        UDto dto = (UDto) session.getAttribute("user");

        if(dto.getuName().equals(request.getParameter("bName"))){
            int bId = Integer.parseInt(request.getParameter("bId"));
            BDao dao = new BDao();
            BDto dto1 = dao.contentView(bId);

            request.setAttribute("content_view",dto1);
        }
        else{
            PrintWriter out = null;
            try {
                response.setCharacterEncoding("UTF-8");
                response.setContentType("text/html; charset=UTF-8");
                out = response.getWriter();

                out.println("<script language='javascript'>");

            } catch (IOException e) {
                e.printStackTrace();
            }
            out.println("alert('수정 권한이 없습니다.');");
            out.println("location.href='list.do';");

            out.println("</script>");
            out.close();
        }
    }
}
