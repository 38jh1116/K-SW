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
public class BModifyCommand implements Bcommand{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {


        String bId = request.getParameter("bId");
        String bName = request.getParameter("bName");
        String bTitle = request.getParameter("bTitle");
        String bContent = request.getParameter("bContent");

        BDao dao = new BDao();
        dao.modify(bId,bTitle,bContent);




    }
}
