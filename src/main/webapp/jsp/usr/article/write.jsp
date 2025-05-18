<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="../../common/head.jspf" %>

<style>
  .container {
    max-width: 1200px;
    margin: 2rem auto;
    padding: 0 1rem;
  }

  h2 {
      margin-bottom: 20px;
      color: #333;
  }

  .form-group {
      margin-bottom: 20px;
  }

  .form-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
  }

  .form-group input[type="text"],
  .form-group textarea {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-size: 16px;
  }

  .form-group input[type="text"] {
      height: 40px;
  }

  .form-group textarea {
      height: 300px;
      resize: vertical;
  }

  .button-group {
      margin-top: 20px;
  }

  .button-group button {
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 10px;
  }

  .submit-btn {
      background-color: #4CAF50;
      color: white;
  }

  .submit-btn:hover {
      background-color: #45a049;
  }

  .cancel-btn {
      background-color: #f44336;
      color: white;
  }

  .cancel-btn:hover {
      background-color: #da190b;
  }
</style>

<script>
  function ArticleSave_submitFrom(form) {
    form.subject.value = form.subject.value.trim();

    if(form.subject.value.length == 0) {
      alert("제목을 입력해주세요");
      form.subject.focus();
      return;
    }

    form.content.value = form.content.value.trim();

    if(form.content.value.length == 0) {
      alert("내용을 입력해주세요");
      form.content.focus();
      return;
    }

    form.submit();
  }
</script>


<div class="container">
  <h2>게시물 작성</h2>

  <form method="POST" onsubmit="ArticleSave_submitFrom(this); return false;">
    <div class="form-group">
      <label for="subject">제목</label>
      <input type="text"
             id="subject"
             name="subject"
             placeholder="제목을 입력해주세요"
             required>
    </div>

    <div class="form-group">
      <label for="content">내용</label>
      <textarea id="content"
                name="content"
                placeholder="내용을 입력해주세요"
                required></textarea>
    </div>

    <div class="button-group">
      <button type="submit" class="submit-btn">게시물 등록</button>
      <button type="button" class="cancel-btn" onclick="history.back()">취소</button>
    </div>
  </form>
</div>

<%@ include file="../../common/foot.jspf" %>