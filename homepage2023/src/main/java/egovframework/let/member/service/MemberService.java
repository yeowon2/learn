package egovframework.let.member.service;

public interface MemberService {
	
	// 회원 ID 찾기 완료 창에서 회원 ID 찾기
	public MemberVO findId(MemberVO vo) throws Exception;

	// 회원 비밀번호 찾기
	public MemberVO findPassword(MemberVO vo)throws Exception;

	// 회원 비밀번호 업데이트
	void passwordUpdate(MemberVO vo) throws Exception;
}
