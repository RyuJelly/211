package chat.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chat.service.ChatService;

public class ChatAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		ChatService service = ChatService.getInstance();
		
		service.insertChat(request);
		
		forward.setRedirect(true);
		forward.setPath("listAction.do");
		
		return forward;
	}
}
