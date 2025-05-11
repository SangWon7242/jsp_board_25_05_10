<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.sbs.java.jsp.board.boundedContext.article.dto.Article" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%
  List<Article> articles = (List<Article>) request.getAttribute("articles");
%>

<h1>게시물 리스트</h1>

<div>
  <ul>
    <% for(int i = articles.size() - 1; i >= 0; i--) { %>
    <% Article article = articles.get(i); %>
      <li><%= article.getId()%> : <%= article.getSubject() %></li>
    <% } %>
  </ul>
</div>