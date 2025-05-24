package com.sbs.java.jsp.board.boundedContext.member.controller;

import com.sbs.java.jsp.board.boundedContext.base.Container;
import com.sbs.java.jsp.board.boundedContext.global.base.Rq;
import com.sbs.java.jsp.board.boundedContext.member.service.MemberService;

public class MemberController {
  private MemberService memberService;

  public MemberController() {
    memberService = Container.memberService;
  }

  public void showJoin(Rq rq) {
    rq.view("usr/member/join");
  }
}
