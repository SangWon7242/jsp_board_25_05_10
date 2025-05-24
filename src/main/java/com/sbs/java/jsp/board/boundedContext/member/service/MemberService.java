package com.sbs.java.jsp.board.boundedContext.member.service;

import com.sbs.java.jsp.board.boundedContext.base.Container;
import com.sbs.java.jsp.board.boundedContext.member.dto.Member;
import com.sbs.java.jsp.board.boundedContext.member.repository.MemberRepository;

public class MemberService {
  private MemberRepository memberRepository;

  public MemberService() {
    memberRepository = Container.memberRepository;
  }

  public Member findByUsername(String username) {
    return memberRepository.findByUsername(username);
  }

  public void join(String username, String password, String name) {
    memberRepository.join(username, password, name);
  }
}
