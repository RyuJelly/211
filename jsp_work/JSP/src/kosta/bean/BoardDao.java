package kosta.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {
	private static BoardDao dao = new BoardDao();
	
	public static BoardDao getInstance() {
		return dao;
	}
	
	//DBCP Connection 객체 구하기
	public Connection getDBCPConnection() {
		DataSource ds = null;
		try {
			//JNDI
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			return ds.getConnection();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Board detailBoard(int seq) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board board = new Board();
		String sql = "select * from board where seq=?";
		
		try {
			conn = getDBCPConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContents(rs.getString("contents"));
				board.setRegdate(rs.getString("regdate"));
				board.setHitcount(rs.getInt("hitcount"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return board;
	}
	
	
	public List<Board> listBoard(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Board> list = null;
		String sql = "select * from board order by seq desc";
		
		try {
			conn = getDBCPConnection();	// connection poll에서 connection객체를 추출
			pstmt = conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			list = new ArrayList<Board>();
			
			while(rs.next()) {
				Board board = new Board();
				board.setSeq(rs.getInt("seq"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContents(rs.getString("contents"));
				board.setRegdate(rs.getString("regdate"));
				board.setHitcount(rs.getInt("hitcount"));
				
				list.add(board);
			}			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	

	public int insert(Board board) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta211";
		String password = "1234";
		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, sysdate, 0)";
		int re = -1;
		
		try {
			//1단계: JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2단계: Connection 객체 생성(DB연결)
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("conn: " + conn);
			//3단계: PrepareStatement 객체 생성(SQL 질의)
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContents());
			
			re = pstmt.executeUpdate();		// DB에 insert수행, 업데이트된 데이터 숫자 반환 (이 경우 1)
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e2) {}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (Exception e2) {}
			}
		}
		
		return re;
	}
}


















