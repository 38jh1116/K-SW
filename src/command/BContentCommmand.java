package command;

import dao.BDao;
import dto.BDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by jeonjin-il on 2017. 1. 25..
 */
public class BContentCommmand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {

        int bId = Integer.parseInt(request.getParameter("bId"));
        BDao dao = new BDao();
        BDto dto = dao.contentView(bId);

        request.setAttribute("content_view",dto);
    }
}
