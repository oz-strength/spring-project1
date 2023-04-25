package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;
import kr.board.entity.Member;

@Mapper //- MyBatis API
public interface MemberMapper {
	public Member registerCheck(String memID);
	public int register(Member m); // 회원 등록(1,0)
	public Member memLogin(Member mvo); //로그인 체크
	public int memUpdate(Member mvo); // 수정하기
	public Member getMember(String memID);
	public void memProfileUpdate(Member mvo);
}

