package kosta.mapper;

import java.util.List;
import java.util.Map;

import kosta.bean.Board;
import kosta.bean.Search;

public interface BoardMapper {
	int insertBoard(Board board);
	List<Board> listBoard(Map map);
	Board detailBoard(int seq);
	Board updateForm(int seq);
	int updateBoard(Board board);
}
