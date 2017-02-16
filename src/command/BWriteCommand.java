package command;

import dao.BDao;
import dto.UDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jeonjin-il on 2017. 1. 26..
 */
public class BWriteCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(true);
        UDto dto = (UDto) session.getAttribute("user");

        String bName = dto.getuName();
        String bTitle = request.getParameter("bTitle");
        String bContent = request.getParameter("bContent");
        BDao dao = new BDao();
        dao.write(bName, bTitle, bContent);

    }
}
