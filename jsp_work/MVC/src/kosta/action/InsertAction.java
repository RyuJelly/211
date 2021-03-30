package kosta.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.service.BoardService;

public class InsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		BoardService service = BoardService.getInstance();

		//비지니스로직 호출
		service.insertBoardService(request);
		
		//새로운 요청
		forward.setRedirect(true);
		forward.setPath("listAction.do");
		
		
		return forward;
	}

}
