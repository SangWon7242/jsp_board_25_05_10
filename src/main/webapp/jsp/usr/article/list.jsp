<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
  /* 전체 컨테이너 스타일 */
  .container {
    max-width: 1200px;
    margin: 2rem auto;
    padding: 0 1rem;
  }

  /* 제목 스타일 */
  .page-title {
    color: #333;
    font-size: 2rem;
    margin-bottom: 2rem;
    padding-bottom: 1rem;
    border-bottom: 2px solid #f0f0f0;
  }

  /* 테이블 컨테이너 스타일 */
  .article-list-box {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    overflow: hidden;
  }

  /* 테이블 기본 스타일 */
  .article-list {
    width: 100%;
    border-collapse: collapse;
  }

  /* 테이블 헤더 스타일 */
  .article-list thead th {
    background-color: #f8f9fa;
    color: #495057;
    padding: 1rem;
    font-weight: 600;
    text-align: left;
    border-bottom: 2px solid #dee2e6;
  }

  /* 테이블 셀 스타일 */
  .article-list td {
    padding: 1rem;
    border-bottom: 1px solid #dee2e6;
    color: #212529;
  }

  /* 테이블 행 호버 효과 */
  .article-list tbody tr:hover {
    background-color: #f8f9fa;
    transition: background-color 0.2s ease;
  }

  /* 번호 열 스타일 */
  .article-list td:first-child {
    width: 100px;
    text-align: center;
    color: #6c757d;
  }

  /* 내용 열 스타일 */
  .article-list td:nth-child(2) {
    font-weight: 500;
  }

  /* 반응형 디자인 */
  @media (max-width: 768px) {
    .container {
      padding: 0 0.5rem;
    }

    .page-title {
      font-size: 1.5rem;
    }

    .article-list td,
    .article-list th {
      padding: 0.75rem;
    }
  }
</style>

<div class="container">
  <h1 class="page-title">게시물 리스트</h1>
  <nav class="article-list-box">
    <table class="article-list">
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
</div>