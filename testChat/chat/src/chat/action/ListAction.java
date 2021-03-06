package chat.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chat.model.Chat;
import chat.service.ChatService;

public class ListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		ChatService service = ChatService.getInstance();
		
		List<Chat> list = service.listChatService(request);
		request.setAttribute("list", list);
		
		forward.setRedirect(false);
		forward.setPath("/chat.jsp");
		
		return forward;
	}

}
