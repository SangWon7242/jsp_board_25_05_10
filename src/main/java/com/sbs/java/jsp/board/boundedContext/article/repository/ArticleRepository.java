package com.sbs.java.jsp.board.boundedContext.article.repository;

import com.sbs.java.jsp.board.boundedContext.article.dto.Article;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.LongStream;

public class ArticleRepository {
  private List<Article> articleList;
  private long lastId;

  public ArticleRepository() {
    articleList = new ArrayList<>();
    makeTestData();

    lastId = articleList.get(articleList.size() - 1).getId();
  }

  void makeTestData() {
    LongStream.rangeClosed(1, 5)
        .forEach(i -> write("제목" + i, "내용" + i));
  }

  public List<Article> findAll() {
    List<Article> articles = new ArrayList<>(articleList);
    Collections.reverse(articles);

    return articles;
  }

  public long write(String subject, String content) {
    long id = ++lastId;

    Article article = new Article(id, subject, content);
    articleList.add(article);

    return id;
  }

  public Article findById(long id) {
    return articleList.stream()
        .filter(article -> article.getId() == id)
        .findFirst()
        .orElse(null);
  }

  public void modify(long id, String subject, String content) {
    Article article = findById(id);

    if(article == null) return;

    article.setSubject(subject);
    article.setContent(content);
  }

  public void delete(long id) {
    Article article = findById(id);

    if(article == null) return;

    articleList.remove(article);
  }
}
