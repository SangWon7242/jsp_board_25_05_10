package com.sbs.java.jsp.board.boundedContext.base;

import com.sbs.java.jsp.board.boundedContext.article.controller.ArticleController;
import com.sbs.java.jsp.board.boundedContext.article.repository.ArticleRepository;
import com.sbs.java.jsp.board.boundedContext.article.service.ArticleService;
import com.sbs.java.jsp.board.boundedContext.member.controller.MemberController;
import com.sbs.java.jsp.board.boundedContext.member.repository.MemberRepository;
import com.sbs.java.jsp.board.boundedContext.member.service.MemberService;

import java.lang.reflect.Member;

public class Container {
  public static MemberRepository memberRepository;
  public static ArticleRepository articleRepository;

  public static MemberService memberService;
  public static ArticleService articleService;

  public static MemberController memberController;
  public static ArticleController articleController;

  static {
    memberRepository = new MemberRepository();
    articleRepository = new ArticleRepository();

    memberService = new MemberService();
    articleService = new ArticleService();

    memberController = new MemberController();
    articleController = new ArticleController();
  }
}
