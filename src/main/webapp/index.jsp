<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="jsp/common/head.jspf" %>

<div class="hero bg-base-200 h-full justify-self-center">
  <div class="hero-content text-center">
    <div class="max-w-md">
      <h1 class="text-5xl font-bold">JSP 게시판</h1>
      <p class="py-6">
        환영합니다! 이 사이트는 JSP로 만든 게시판 프로젝트입니다.
        자유롭게 글을 작성하고 소통해보세요.
      </p>
      <div class="flex gap-4 justify-center">
        <a href="/usr/article/list" class="btn btn-primary">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" viewBox="0 0 20 20" fill="currentColor">
            <path d="M7 3a1 1 0 000 2h6a1 1 0 100-2H7zM4 7a1 1 0 011-1h10a1 1 0 110 2H5a1 1 0 01-1-1zM2 11a2 2 0 012-2h12a2 2 0 012 2v4a2 2 0 01-2 2H4a2 2 0 01-2-2v-4z" />
          </svg>
          게시물 보기
        </a>
        <a href="/usr/article/write" class="btn btn-secondary">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-11a1 1 0 10-2 0v2H7a1 1 0 100 2h2v2a1 1 0 102 0v-2h2a1 1 0 100-2h-2V7z" clip-rule="evenodd" />
          </svg>
          글쓰기
        </a>
      </div>
    </div>
  </div>
</div>

<%@ include file="jsp/common/foot.jspf" %>