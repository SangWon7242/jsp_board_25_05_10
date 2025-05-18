package com.sbs.java.jsp.board.boundedContext.article.controller;

import com.sbs.java.jsp.board.boundedContext.article.dto.Article;
import com.sbs.java.jsp.board.boundedContext.article.service.ArticleService;
import com.sbs.java.jsp.board.boundedContext.base.Container;
import com.sbs.java.jsp.board.boundedContext.global.base.Rq;

import java.util.List;

public class ArticleController {
  private ArticleService articleService;

  public ArticleController() {
    articleService = Container.articleService;
  }

  public void showList(Rq rq) {
    List<Article> articles = articleService.findAll();

    if (articles.isEmpty()) {
      rq.replace("게시물이 존재하지 않습니다.", "/");
    }

    rq.setAttr("articles", articles);

    rq.view("usr/article/list");
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }

  public void doWrite(Rq rq) {
    String subject = rq.getParam("subject", "");

    if (subject.trim().isEmpty()) {
      rq.replace("제목을 입력해주세요.", "/usr/article/write");
      return;
    }

    String content = rq.getParam("content", "");

    if (content.trim().isEmpty()) {
      rq.replace("내용을 입력해주세요.", "/usr/article/write");
      return;
    }

    long id = articleService.write(subject, content);

    rq.replace("%d번 게시물 생성되었습니다.".formatted(id), "/usr/article/detail/free/%d".formatted(id));
  }

  public void showDetail(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if (id == 0) {
      rq.historyBack("올바른 요청이 아닙니다.");
      return;
    }

    Article article = articleService.findById(id);

    if (article == null) {
      rq.replace("%d번 게시물이 존재하지 않습니다.".formatted(id), "/usr/article/list");
      return;
    }

    rq.setAttr("article", article);
    rq.view("usr/article/detail");
  }

  public void showModify(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if (id == 0) {
      rq.historyBack("올바른 요청이 아닙니다.");
      return;
    }

    Article article = articleService.findById(id);

    if (article == null) {
      rq.replace("%d번 게시물이 존재하지 않습니다.".formatted(id), "/usr/article/list");
      return;
    }

    rq.setAttr("article", article);

    rq.view("usr/article/modify");
  }

  public void doModify(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    String subject = rq.getParam("subject", "");

    if (subject.trim().isEmpty()) {
      rq.replace("제목을 입력해주세요.", "/usr/article/write");
      return;
    }

    String content = rq.getParam("content", "");

    if (content.trim().isEmpty()) {
      rq.replace("내용을 입력해주세요.", "/usr/article/write");
      return;
    }

    articleService.modify(id, subject, content);

    rq.replace("%d번 게시물 수정되었습니다.".formatted(id), "/usr/article/detail/free/%d".formatted(id));
  }

  public void doDelete(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if (id == 0) {
      rq.historyBack("올바른 요청이 아닙니다.");
      return;
    }

    Article article = articleService.findById(id);

    if (article == null) {
      rq.replace("%d번 게시물이 존재하지 않습니다.".formatted(id), "/usr/article/list");
      return;
    }

    articleService.delete(id);

    rq.replace("%d번 게시물이 삭제되었습니다.".formatted(id), "/usr/article/list");
  }
}