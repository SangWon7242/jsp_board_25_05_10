package com.sbs.java.jsp.board.boundedContext.base;

import com.sbs.java.jsp.board.boundedContext.article.controller.ArticleController;
import com.sbs.java.jsp.board.boundedContext.member.controller.MemberController;

public class Container {
  public static MemberController memberController;

  public static ArticleController articleController;

  static {
    memberController = new MemberController();
    articleController = new ArticleController();
  }
}
