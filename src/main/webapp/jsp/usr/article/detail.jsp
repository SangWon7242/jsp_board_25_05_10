<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
  * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
  }

  .container {
      width: 80%;
      max-width: 800px;
      margin: 50px auto;
      padding: 20px;
  }

  .article-header {
      border-bottom: 2px solid #333;
      padding-bottom: 20px;
      margin-bottom: 20px;
  }

  .article-title {
      font-size: 24px;
      color: #333;
      margin-bottom: 15px;
  }

  .article-info {
      display: flex;
      justify-content: space-between;
      color: #666;
      font-size: 14px;
  }

  .article-content {
      min-height: 300px;
      line-height: 1.6;
      padding: 20px 0;
      border-bottom: 1px solid #ddd;
  }

  .button-group {
      margin-top: 30px;
      text-align: right;
  }

  .btn {
      display: inline-block;
      padding: 8px 16px;
      border: none;
      border-radius: 4px;
      font-size: 14px;
      cursor: pointer;
      margin-left: 10px;
      text-decoration: none;
  }

  .btn-modify {
      background-color: #4CAF50;
      color: white;
  }

  .btn-delete {
      background-color: #f44336;
      color: white;
  }

  .btn-list {
      background-color: #666;
      color: white;
  }

  .btn:hover {
      opacity: 0.9;
  }
</style>

<div class="container">
  <div class="article-header">
    <h1 class="article-title">${article.subject}</h1>
    <div class="article-info">
      <div class="left-info">
        <span>번호 : ${article.id}</span>
      </div>
      <div class="right-info">
        <span>작성일: 2025-00-00 00:00</span>
      </div>
    </div>
  </div>

  <div class="article-content">
    ${article.content}
  </div>

  <div class="button-group">
    <a href="list" class="btn btn-list">목록</a>
  </div>
</div>

