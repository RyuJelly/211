package kosta.service;

import java.io.File;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kosta.model.Board;
import kosta.model.BoardDao2;
import kosta.model.ImageUtil;
import kosta.model.ListModel;
import kosta.model.Reply;
import kosta.model.Search;

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
		// 파일업로드, DB에 파일 이름 저장
		
		// 파일 업로드(경로, 파일크기, 인코딩, 파일이름중첩 정책)
		String uploadPath = request.getRealPath("upload");
		int size = 20 * 1024 * 1024; //20MB
		
		MultipartRequest multi =
				new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());

		Board board = new Board();
		board.setTitle(multi.getParameter("title"));
		board.setWriter(multi.getParameter("writer"));
		board.setContents(multi.getParameter("contents"));
		board.setFname("");
		
		// 파일업로드 DB(파일이름 저장)
		if(multi.getFilesystemName("fname") != null) {
			String fname = (String)multi.getFilesystemName("fname");
			board.setFname(fname);
			
			// 썸네일 이미지(gif, jpg) aa.gif => aa_small.gif
			String pattern = fname.substring(fname.indexOf(".")+1); // gif, jpg
			String head = fname.substring(0, fname.indexOf(".")); // aa
			
			// 원본파일객체
			String imagePath = uploadPath + "\\" + fname;
			File src = new File(imagePath);
			
			// 썸네일 파일객체
			String thumPath = uploadPath + "\\" + head + "_small." + pattern;
			File dest = new File(thumPath);
			
			if(pattern.equals("gif") || pattern.equals("jpg")) {
				ImageUtil.resize(src, dest, 100, ImageUtil.RATIO);
			}
			
		}

		return dao.insertBoard(board);
	}

	public ListModel listBoardService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		Search search = new Search();
		HttpSession session = request.getSession();
		
		// 검색할 경우
		if(request.getParameterValues("area") != null ) {
			session.removeAttribute("search");
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%" + request.getParameter("searchKey") + "%");
			session.setAttribute("search", search);
		}else if(session.getAttribute("search") != null) {	// 검색 후 페이지를 클릭 할 경우
			if(request.getParameter("pageNum") == null) {
				session.removeAttribute("search");
			}
			search = (Search)session.getAttribute("search");
		}
		
		
		
				
		// 페이지처리 필수사항
		// 페이지당 글 개수, 총 글 개수, 총 페이지수, 현재페이지, startPage, endPage, startRow
		
		// 총 글 개수
		int totalCount = dao.countBoard(search);
		
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
		
		List<Board> list = dao.listBoard(search, startRow);
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
	
	public int insertReplyService(Reply reply)throws Exception {
		return dao.insertReply(reply);
	}
	
	public List<Reply> listReplyService(int seq){
		return dao.listReply(seq);
	}
	
}
