package command;

import dao.BDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by jeonjin-il on 2017. 2. 11..
 */
public class BJoinCommand implements Bcommand {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        BDao dao = new BDao();

        String uId = request.getParameter("uId");
        String uPass = request.getParameter("uPass");
        String uName = request.getParameter("uName");
        String uSex = request.getParameter("uSex");
        dao.join(uId,uPass,uName,uSex);
    }
}
