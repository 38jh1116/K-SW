package command;

import dao.BDao;
import dto.BDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 * Created by jeonjin-il on 2017. 1. 25..
 */
public class BListCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        BDao dao = new BDao();
        ArrayList<BDto> dtos = dao.list();
        request.setAttribute("list",dtos);
    }
}
