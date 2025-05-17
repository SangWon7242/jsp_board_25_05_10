package com.sbs.java.jsp.board.boundedContext.article.controller;

import com.sbs.java.jsp.board.boundedContext.article.dto.Article;
import com.sbs.java.jsp.board.boundedContext.global.base.Rq;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.LongStream;

public class ArticleController {
  private List<Article> articleList;
  private long lastId;

  public ArticleController() {
    articleList = new ArrayList<>();
    makeTestData();

    lastId = articleList.get(articleList.size() - 1).getId();
  }

  void makeTestData() {
    LongStream.rangeClosed(1, 5)
        .forEach(i -> articleList.add(new Article(i, "제목" + i, "내용" + i)));
  }

  public void showList(Rq rq) {
    List<Article> articles = articleList;

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

    long id = ++lastId;

    Article article = new Article(id, subject, content);
    articleList.add(article);

    rq.appendBody("""
        <div>%d번 게시물 생성</div>
        <div>subject : %s</div>
        <div>content : %s</div>
        """.formatted(article.getId(), subject, content));
  }
}
