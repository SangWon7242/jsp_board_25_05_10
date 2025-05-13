<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<h1>게시물 리스트</h1>

<div>
  <ul>
    <c:forEach var="article" items="${articles}" varStatus="status">
      <li>${article.id} : ${article.subject}</li>
    </c:forEach>
  </ul>
</div>

<c:out value="안녕" />