package command;

import dao.BDao;
import dto.BDto;
import dto.UDto;
import frontcontroller.BFrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jeonjin-il on 2017. 1. 26..
 */
public class BDeleteCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {


        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession(true);
        UDto dto = (UDto) session.getAttribute("user");
        PrintWriter out = null;
        try {
            out = response.getWriter();

            out.println("<script language='javascript'>");

        } catch (IOException e) {
            e.printStackTrace();
        }

        if(dto.getuName().equals(request.getParameter("bName"))){
            String bId = request.getParameter("bId");

            BDao dao = new BDao();
            dao.delete(bId);
            out.println("alert('삭제 되었습니다.');");
        }
        else{
            out.println("alert('삭제 권한이 없습니다.');");
        }
        out.println("location.href='list.do'; </script>");
        out.close();


    }
}
