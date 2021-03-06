package kosta.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.action.Action;
import kosta.action.ActionForward;
import kosta.action.DeleteAction;
import kosta.action.DetailAction;
import kosta.action.InsertAction;
import kosta.action.InsertFormAction;
import kosta.action.InsertReplyAction;
import kosta.action.ListAction;
import kosta.action.UpdateAction;
import kosta.action.UpdateFormAction;

@WebServlet("/board/*")
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
    	String command = requestURI.substring(contextPath.length()+7);
    	System.out.println("최종요청: " + command);
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("insertForm.do")) {
    		action = new InsertFormAction();
    		try {
    			forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	}else if(command.equals("insertAction.do")) {
    		action = new InsertAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("listAction.do")) {
    		action = new ListAction();    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("detailAction.do")) {
    		action = new DetailAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("updateForm.do")) {
    		action = new UpdateFormAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("updateAction.do")) {
    		action = new UpdateAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("deleteAction.do")) {
    		action = new DeleteAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("insertReplyAction.do")) {
    		action = new InsertReplyAction();
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








