<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="JSP 게시물 수정" />

<%@ include file="../../common/head.jspf" %>

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


<div class="container mx-auto px-4 py-8 max-w-4xl">
  <h2 class="text-3xl font-bold mb-8 text-gray-800">게시물 수정</h2>

  <form method="POST" onsubmit="ArticleSave_submitFrom(this); return false;" class="card bg-base-100 shadow-xl p-6">
    <div class="form-control w-full mb-6">
      <label class="label">
        <span class="label-text text-lg font-semibold">제목</span>
      </label>
      <input type="text"
             id="subject"
             name="subject"
             placeholder="제목을 입력해주세요"
             class="input input-bordered w-full"
             value="${article.subject}"
             required>
    </div>

    <div class="form-control w-full mb-6 flex flex-col">
      <label class="label">
        <span class="label-text text-lg font-semibold">내용</span>
      </label>
      <textarea id="content"
                name="content"
                placeholder="내용을 입력해주세요"
                class="textarea textarea-bordered h-64 w-full"
                required>${article.content}</textarea>
    </div>

    <div class="flex gap-4">
      <button type="submit" class="btn btn-primary flex-1">게시물 등록</button>
      <button type="button" class="btn btn-error flex-1" onclick="history.back()">취소</button>
    </div>
  </form>
</div>

<%@ include file="../../common/foot.jspf" %>