package com.sbs.java.jsp.board.boundedContext.article.service;

import com.sbs.java.jsp.board.boundedContext.article.dto.Article;
import com.sbs.java.jsp.board.boundedContext.article.repository.ArticleRepository;
import com.sbs.java.jsp.board.boundedContext.base.Container;

import java.util.List;

public class ArticleService {
  private ArticleRepository articleRepository;

  public ArticleService() {
    articleRepository = Container.articleRepository;
  }

  public List<Article> findAll() {
    return articleRepository.findAll();
  }

  public long write(String subject, String content) {
    return articleRepository.write(subject, content);
  }

  public Article findById(long id) {
    return articleRepository.findById(id);
  }

  public void modify(long id, String subject, String content) {
    articleRepository.modify(id, subject, content);
  }
}
