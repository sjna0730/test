package com.board.dao;

import java.util.List;

import com.board.domain.BoardVO;
import com.board.domain.Criteria;

public interface BoardDAO {
	
	// 게시물 목록
	public List<BoardVO> list() throws Exception;
	
	// 게시물 페이징
	public List<BoardVO> listPage(Criteria cri) throws Exception;
	
	// 게시물 총 갯수
	public int listCount() throws Exception;
	
	// 게시물 작성
	public void write(BoardVO vo) throws Exception;
	
	// 게시물 조회
	public BoardVO view(int bno) throws Exception;
	
	// 게시물 수정
	public void modify(BoardVO vo) throws Exception;
	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
}