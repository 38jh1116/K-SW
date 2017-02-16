package command;

import dao.BDao;
import dto.UDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jeonjin-il on 2017. 2. 6..
 */
public class BLoginCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        BDao dao = new BDao();
        UDto dto = null;
        dto = dao.login(request.getParameter("uId"),request.getParameter("uPass"));
        PrintWriter out = null;
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            out = response.getWriter();

            out.println("<script language='javascript'>");

        } catch (IOException e) {
            e.printStackTrace();
        }

        if(dto!= null) {
            HttpSession session = request.getSession();
            session.setAttribute("user",dto);
            out.println("alert('로그인이 완료되었습니다.');");
            out.println("location.href='index.jsp';");
        }
        else{
            out.println("alert('아이디 , 비밀번호 확인해주세요');");
            out.println("history.go(-1);");
        }
        out.println("</script>");
        out.close();
    }
}
