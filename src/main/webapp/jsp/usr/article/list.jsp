<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<h1>게시물 리스트</h1>

<style>
  table {
    border-collapse: collapse;
  }
</style>

<nav class="article-list-box">
  <table border="1" class="article-list">
    <thead>
    <tr>
      <th>번호</th>
      <th>내용</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="article" items="${articles}" varStatus="status">
      <tr>
        <td>${article.id}</td>
        <td>${article.subject}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</nav>

