package chat.mapper;

import java.util.List;

import chat.model.Chat;

public interface ChatMapper {
	int insertChat(Chat chat);
	List<Chat> listChat();
}
