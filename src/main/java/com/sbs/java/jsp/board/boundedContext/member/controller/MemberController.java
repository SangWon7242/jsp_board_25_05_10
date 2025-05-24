package com.sbs.java.jsp.board.boundedContext.member.controller;

import com.sbs.java.jsp.board.boundedContext.base.Container;
import com.sbs.java.jsp.board.boundedContext.global.base.Rq;
import com.sbs.java.jsp.board.boundedContext.member.dto.Member;
import com.sbs.java.jsp.board.boundedContext.member.service.MemberService;

public class MemberController {
  private MemberService memberService;

  public MemberController() {
    memberService = Container.memberService;
  }

  public void showJoin(Rq rq) {
    rq.view("usr/member/join");
  }

  public void doJoin(Rq rq) {
    String username = rq.getParam("username", "");

    if (username.trim().isEmpty()) {
      rq.replace("로그인 아이디를 입력해주세요.", "/usr/member/join");
      return;
    }

    String password = rq.getParam("password", "");

    if (password.trim().isEmpty()) {
      rq.replace("비밀번호를 입력해주세요.", "/usr/member/join");
      return;
    }

    String name = rq.getParam("name", "");

    if (name.trim().isEmpty()) {
      rq.replace("이름을 입력해주세요.", "/usr/member/join");
      return;
    }

    Member member = memberService.findByUsername(username);

    if(member != null) {
      rq.replace("입력한 로그인 아이디는 이미 존재합니다.", "/usr/member/join");
      return;
    }

    memberService.join(username, password, name);

    rq.replace("'%s'님 회원 가입 되었습니다.".formatted(username), "/");
  }
}
