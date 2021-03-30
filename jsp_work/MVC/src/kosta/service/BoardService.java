package kosta.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kosta.model.Board;
import kosta.model.BoardDao2;

public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDao2 dao;
	
	public static BoardService getInstance() {
		dao = BoardDao2.getInstance();
		return service;
	}
	
	public int insertBoardService(HttpServletRequest request)throws Exception {
		request.setCharacterEncoding("utf-8");
		
		Board board = new Board();
		board.setTitle(request.getParameter("title"));
		board.setWriter(request.getParameter("writer"));
		board.setContents(request.getParameter("contents"));
		
		return dao.insertBoard(board);
	}
	
	public List<Board> listBoardService()throws Exception{
		List<Board> list = dao.listBoard();
		
		return list;
	}
}
