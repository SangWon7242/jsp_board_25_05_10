package com.sbs.java.jsp.board.boundedContext.base;

import com.sbs.java.jsp.board.boundedContext.article.controller.ArticleController;
import com.sbs.java.jsp.board.boundedContext.article.repository.ArticleRepository;
import com.sbs.java.jsp.board.boundedContext.article.service.ArticleService;
import com.sbs.java.jsp.board.boundedContext.member.controller.MemberController;

public class Container {

  public static ArticleRepository articleRepository;

  public static ArticleService articleService;

  public static MemberController memberController;
  public static ArticleController articleController;

  static {

    articleRepository = new ArticleRepository();

    articleService = new ArticleService();

    memberController = new MemberController();
    articleController = new ArticleController();
  }
}
