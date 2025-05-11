package com.sbs.java.jsp.board.boundedContext.article.controller;

import com.sbs.java.jsp.board.boundedContext.global.base.Rq;

public class ArticleController {
  public void showList(Rq rq) {
    rq.appendBody("게시물 리스트");
  }
}
