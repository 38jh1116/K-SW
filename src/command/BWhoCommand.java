package command;

import dto.UDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jeonjin-il on 2017. 2. 11..
 */
public class BWhoCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(true);
        UDto dto = (UDto) session.getAttribute("user");
        if(dto == null){
            PrintWriter out = null;
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            try {
                out = response.getWriter();
                out.println("<script language='javascript'>");

            } catch (IOException e) {
                e.printStackTrace();
            }
            out.println("alert('로그인 해주세요.');");
            out.println("location.href='go_login.do';");
            out.println("</script>");
            out.close();

        }
    }
}
