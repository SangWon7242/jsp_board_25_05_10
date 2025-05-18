package com.sbs.java.jsp.board.boundedContext.article.controller;

import com.sbs.java.jsp.board.boundedContext.article.dto.Article;
import com.sbs.java.jsp.board.boundedContext.article.service.ArticleService;
import com.sbs.java.jsp.board.boundedContext.base.Container;
import com.sbs.java.jsp.board.boundedContext.global.base.Rq;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.LongStream;

public class ArticleController {
  private ArticleService articleService;

  public ArticleController() {
    articleService = Container.articleService;
  }

  public void showList(Rq rq) {
    List<Article> articles = articleService.findAll();

    rq.setAttr("articles", articles);

    rq.view("usr/article/list");
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }

  public void doWrite(Rq rq) {
    String subject = rq.getParam("subject", "");

    if(subject.trim().isEmpty()) {
      rq.appendBody("""
                    <script>
                      alert("제목을 입력해주세요.");
                    </script>
                    """);
      return;
    }

    String content = rq.getParam("content", "");

    if(content.trim().isEmpty()) {
      rq.appendBody("""
                    <script>
                      alert("내용을 입력해주세요.");
                    </script>
                    """);
      return;
    }

    long id = articleService.write(subject, content);

    rq.appendBody("""
        <div>%d번 게시물 생성</div>
        <div>subject : %s</div>
        <div>content : %s</div>
        """.formatted(id, subject, content));
  }

  public void showDetail(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if(id == 0) {
      rq.appendBody("""
                    <script>
                      alert("올바른 요청이 아닙니다.");
                    </script>
                    """);
      return;
    }

    Article article = articleService.findById(id);

    if(article == null) {
      rq.appendBody("""
                    <script>
                      alert("%d번 게시물이 존재하지 않습니다.");
                    </script>
                    """.formatted(id));
      return;
    }

    rq.setAttr("article", article);
    rq.view("usr/article/detail");
  }
}
