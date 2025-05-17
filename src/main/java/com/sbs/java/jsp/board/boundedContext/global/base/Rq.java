package com.sbs.java.jsp.board.boundedContext.global.base;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

public class Rq {
  private final HttpServletRequest req;
  private final HttpServletResponse resp;

  public Rq(HttpServletRequest req, HttpServletResponse resp) {
    this.req = req;
    this.resp = resp;

    try {
      req.setCharacterEncoding("UTF-8"); // 들어오는 데이터를 UTF-8로 해석
    } catch (UnsupportedEncodingException e) {
      throw new RuntimeException(e);
    }

    resp.setCharacterEncoding("UTF-8"); // 완성된 HTML 결과물의 인코딩을 UTF-8로 하겠다.
    resp.setContentType("text/html; charset=utf-8");
  }

  public int getIntParam(String paramName, int defaultValue) {
    String value = req.getParameter(paramName);

    if(value == null) return defaultValue;

    try {
      return Integer.parseInt(value);
    } catch (NumberFormatException e) {
      return defaultValue;
    }
  }

  public String getParam(String paramName, String defaultValue) {
    String value = req.getParameter(paramName);

    if(value == null) return defaultValue;

    return value;
  }

  public void appendBody(String str) {
    try {
      resp.getWriter().append(str);
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public Object getAttr(String name) {
    return req.getAttribute(name);
  }

  public void setAttr(String name, Object value) {
    req.setAttribute(name, value);
  }

  public void view(String path) {
    RequestDispatcher requestDispatcher = req.getRequestDispatcher("/jsp/" + path + ".jsp");
    // /jsp/usr/article/list.jsp

    try {
      requestDispatcher.forward(req, resp);
    } catch (ServletException | IOException e) {
      throw new RuntimeException(e);
    }
  }

  public String getUrlPath() {
    return req.getRequestURI();
  }

  public String getMethod() {
    return req.getMethod();
  }

  public String getActionPath() {
    String[] bits = req.getRequestURI().split("/");
    return "/%s/%s/%s".formatted(bits[1], bits[2], bits[3]);
  }
}
