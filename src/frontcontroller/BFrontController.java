package frontcontroller;

import command.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by jeonjin-il on 2017. 1. 24..
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doAction(request,response);
    }

    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("EUC-KR");

        String viewPage = null;
        Bcommand command = null;

        String uri = request.getRequestURI();
        String conPath = request.getContextPath();
        String com = uri.substring(conPath.length());
        if(com.equals("/write_view.do")){
            command = new BWhoCommand();
            command.execute(request,response);
            viewPage = "write_view.jsp";
        }else if(com.equals("/write.do")){
            command = new BWriteCommand();
            command.execute(request,response);
            viewPage = "list.do";
        }else if(com.equals("/list.do")){
            command = new BListCommand();
            command.execute(request,response);
            viewPage = "list.jsp";
        }else if(com.equals("/content_view.do")){
            command = new BContentCommmand();
            command.execute(request,response);
            viewPage="content_view.jsp";
        }else if(com.equals("/ismodify.do")){
            command = new BWhoCommand();
            command.execute(request,response);
            command = new BIsModifyCommand();
            command.execute(request,response);
            viewPage = "modify.jsp";
        }else if(com.equals("/modify.do")){
            command = new BModifyCommand();
            command.execute(request,response);
            viewPage="list.do";
        }
        else if(com.equals("/delete.do")){
            command = new BWhoCommand();
            command.execute(request,response);
            command = new BDeleteCommand();
            command.execute(request,response);
            viewPage="list.do";
        }else if(com.equals("/go_login.do")){
            viewPage = "login.jsp";
        }
        else if(com.equals("/login.do")){
            command = new BLoginCommand();
            command.execute(request, response);
        }else if(com.equals("/go_join.do")){
            viewPage = "join.jsp";
        }else if(com.equals("/join.do")){
            command = new BJoinCommand();
            command.execute(request,response);
            viewPage = "index.jsp";
        }else if(com.equals("/logout.do")){
            command = new BLogoutCommand();
            command.execute(request,response);
            viewPage = "index.jsp";
        }

        RequestDispatcher view = request.getRequestDispatcher(viewPage);
        view.forward(request,response);
    }

}
