package egovframework.let.board.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface BoardService {

	// 게시판 목록 가져오기
	public List<EgovMap> selectBoardList(BoardVO vo) throws Exception;
	
	// 게시물 목록 수
	public int selectBoardListCnt(BoardVO vo) throws Exception;
	
}