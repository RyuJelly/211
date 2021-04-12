package chat.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import chat.model.Chat;
import chat.model.ChatDao;

public class ChatService {
	private static ChatService service = new ChatService();
	private static ChatDao dao;
	
	public static ChatService getInstance() {
		dao = ChatDao.getInstance();
		return service;
	}
	
	public int insertChat(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		Chat chat = new Chat();
		chat.setWriter(request.getParameter("writer"));
		chat.setContents(request.getParameter("contents"));
		
		return dao.insertChat(chat);
	}
	
	public List<Chat> listChatService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		List<Chat> list = dao.listChat();
		
		return list;
	}
	
	
}
