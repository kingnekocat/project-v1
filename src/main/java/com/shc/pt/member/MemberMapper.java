package com.shc.pt.member;

public interface MemberMapper {

	Member getMemberByID(Member m);

	int join(Member m);

	int update(Member m);

	int deletem(Member m);

	int getmemberNum(Member m);



}
