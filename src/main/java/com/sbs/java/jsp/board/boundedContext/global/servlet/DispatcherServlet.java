package com.sbs.java.jsp.board.boundedContext.global.servlet;

import com.sbs.java.jsp.board.boundedContext.article.controller.ArticleController;
import com.sbs.java.jsp.board.boundedContext.base.Container;
import com.sbs.java.jsp.board.boundedContext.global.base.Rq;
import com.sbs.java.jsp.board.boundedContext.member.controller.MemberController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/usr/*")
public class DispatcherServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    handleRequest(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    handleRequest(req, resp);
  }

  @Override
  protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    handleRequest(req, resp);
  }

  private void handleRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Rq rq = new Rq(req, resp);

    MemberController memberController = Container.memberController;
    ArticleController articleController = Container.articleController;

    switch (rq.getRoutedMethod()) {
      case "GET":
        switch (rq.getActionPath()) {
          case "/usr/article/write" -> articleController.showWrite(rq);
          case "/usr/article/list" -> articleController.showList(rq);
          case "/usr/article/detail" -> articleController.showDetail(rq);
          case "/usr/article/modify" -> articleController.showModify(rq);
          case "/usr/member/join" -> memberController.showJoin(rq);
          case "/usr/member/login" -> memberController.showLogin(rq);
        }
        break;
      case "POST":
        switch (rq.getActionPath()) {
          case "/usr/article/write" -> articleController.doWrite(rq);
          case "/usr/article/modify" -> articleController.doModify(rq);
          case "/usr/article/delete" -> articleController.doDelete(rq);
          case "/usr/member/join" -> memberController.doJoin(rq);
          case "/usr/member/login" -> memberController.doLogin(rq);
          case "/usr/member/logout" -> memberController.doLogout(rq);
        }
        break;
      case "DELETE":
        switch (rq.getActionPath()) {
          case "/usr/article/delete" -> articleController.doDelete(rq);
        }
        break;
    }
  }
}
