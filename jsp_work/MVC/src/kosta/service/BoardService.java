package kosta.service;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import kosta.model.Board;
import kosta.model.BoardDao2;
import kosta.model.ListModel;

public class BoardService {
	private static BoardService service = new BoardService();
	private static BoardDao2 dao;
	private static final int PAGE_SIZE = 2;

	public static BoardService getInstance() {
		dao = BoardDao2.getInstance();
		return service;
	}

	public int insertBoardService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");

		Board board = new Board();
		board.setTitle(request.getParameter("title"));
		board.setWriter(request.getParameter("writer"));
		board.setContents(request.getParameter("contents"));

		return dao.insertBoard(board);
	}

	public ListModel listBoardService(HttpServletRequest request) throws Exception {
		// 페이지처리 필수사항
		// 페이지당 글 개수, 총 글 개수, 총 페이지수, 현재페이지, startPage, endPage, startRow
		
		// 총 글 개수
		int totalCount = dao.countBoard();
		
		// 총 페이지수
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE >0) {
			totalPageCount++;
		}
		
		// 현재 페이지
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		int requestPage = Integer.parseInt(pageNum);
		
		// starPage = 현재페이지 - (현재페이지 - 1) % n  (n: 나타낼 페이지수)
		int startPage = requestPage - (requestPage - 1) % 5;
		
		// endPage
		int endPage = startPage + 4;
		if(endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		// starRow = (현재페이지 - 1) * 페이지당 글 개수
		int startRow = (requestPage - 1) * PAGE_SIZE;
		
		List<Board> list = dao.listBoard(startRow);
		ListModel listModel = 
				new ListModel(list, requestPage, totalPageCount, startPage, endPage);

		return listModel;
	}

	public Board detailBoardService(int seq) throws Exception {
		// int seq = Integer.parseInt(request.getParameter("seq"));

		return dao.detailBoard(seq);
	}
	
	public int updateBoardService(Board board)throws Exception{
		return dao.updateBoard(board);
	}
	
	public int deleteBoardService(int seq)throws Exception{
		return dao.deleteBoard(seq);
	}
	
}
