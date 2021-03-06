package chat.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chat.action.Action;
import chat.action.ActionForward;
import chat.action.ChatAction;
import chat.action.ListAction;


@WebServlet("/chat/*")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public MyController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	//URL 식별
    	//http://localhost:8081/MVC/board/updateBoard.do  => 문자열 부분추출
    	String requestURI = request.getRequestURI();
    	
    	//->/MVC/board/updateBoard.do
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length()+6);
    	System.out.println("최종요청: " + command);
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("listAction.do")) {
    		action = new ListAction();
    		try {
    			forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}    		
    	}else if(command.equals("insertAction.do")) {
    		action = new ChatAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    	if(forward != null) {
    		if(forward.isRedirect()) {
    			response.sendRedirect(forward.getPath());
    		}else {
    			RequestDispatcher dispacher =
    					request.getRequestDispatcher(forward.getPath());
    			dispacher.forward(request, response);
    		}
    	}
    	
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}








