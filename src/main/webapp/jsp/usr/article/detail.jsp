<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="JSP 게시물 상세보기" />

<%@ include file="../../common/head.jspf" %>

<div class="container mx-auto px-4 py-8 max-w-4xl">
  <!-- 게시물 카드 -->
  <div class="card bg-base-100 shadow-xl">
    <!-- 게시물 헤더 -->
    <div class="card-body">
      <!-- 제목 영역 -->
      <div class="border-b border-base-300 pb-4 mb-4">
        <h1 class="card-title text-2xl font-bold mb-4">${article.subject}</h1>
        <div class="flex justify-between items-center text-sm text-gray-500">
          <div class="flex items-center gap-4">
            <span>글번호: ${article.id}</span>
            <div class="divider divider-horizontal mx-0"></div>
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 inline mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              2025-00-00 00:00
            </span>
          </div>
          <div class="flex items-center gap-2">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 inline mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
              </svg>
              0
            </span>
          </div>
        </div>
      </div>

      <!-- 내용 영역 -->
      <div class="min-h-[300px] py-4 prose max-w-none">
        ${article.content}
      </div>

      <!-- 버튼 그룹 -->
      <div class="card-actions justify-end mt-6 pt-4 border-t border-base-300">
        <div class="flex gap-x-3">
          <a href="/usr/article/list" class="btn btn-neutral">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 10h16M4 14h16M4 18h16" />
            </svg>
            목록
          </a>
          <a href="/usr/article/modify/free/${article.id}" class="btn btn-primary">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
            </svg>
            수정
          </a>
          <button onclick="if(confirm('정말 삭제하시겠습니까?')) location.href='/usr/article/delete/${article.id}'" class="btn btn-error">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
            </svg>
            삭제
          </button>
        </div>
      </div>
    </div>
  </div>
</div>

<%@ include file="../../common/foot.jspf" %>