package kosta.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/testServlet")
public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public testServlet() {
        super();
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		int sum = 0;
		
		for(int i=1; i<=num; i++) {
			sum += i;
		}
		request.setAttribute("sum", sum);
		
		RequestDispatcher re =
				request.getRequestDispatcher("/basic/sum.jsp");
		re.forward(request, response);
	}

}
