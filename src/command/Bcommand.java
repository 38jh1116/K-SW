package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by jeonjin-il on 2017. 1. 24..
 */
public interface Bcommand {
    void execute(HttpServletRequest request, HttpServletResponse response);
}
