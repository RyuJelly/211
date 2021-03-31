package kosta.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import kosta.model.Board;


public interface BoardMapper {
	int insertBoard(Board board);
	List<Board> listBoard(RowBounds row);
	Board detailBoard(int seq);
	int updateBoard(Board board);
	int deleteBoard(int seq);
	int countBoard();
}
