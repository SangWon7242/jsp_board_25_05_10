<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ include file="../../common/head.jspf" %>

<div class="container mx-auto px-4 py-8 max-w-4xl">
  <div class="flex justify-between items-center mb-8">
    <h1 class="text-3xl font-bold text-gray-800">게시물 리스트</h1>
    <a href="/usr/article/write" class="btn btn-primary">
      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" viewBox="0 0 20 20" fill="currentColor">
        <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-11a1 1 0 10-2 0v2H7a1 1 0 100 2h2v2a1 1 0 102 0v-2h2a1 1 0 100-2h-2V7z" clip-rule="evenodd" />
      </svg>
      글쓰기
    </a>
  </div>

  <div class="card bg-base-100 shadow-xl">
    <div class="overflow-x-auto">
      <table class="table table-zebra w-full">
        <!-- 테이블 헤더 -->
        <thead>
        <tr>
          <th class="w-24 text-center">번호</th>
          <th>제목</th>
        </tr>
        </thead>
        <!-- 테이블 본문 -->
        <tbody>
        <c:forEach var="article" items="${articles}" varStatus="status">
          <tr class="hover">
            <td class="text-center">${article.id}</td>
            <td>
              <a href="detail/free/${article.id}"
                 class="hover:text-primary transition-colors duration-200 block">
                ${article.subject}
              </a>
            </td>
          </tr>
        </c:forEach>

        <c:if test="${empty articles}">
          <tr>
            <td colspan="3" class="text-center py-8 text-gray-500">
              게시물이 없습니다
            </td>
          </tr>
        </c:if>
        </tbody>
      </table>
    </div>
  </div>
</div>

<%@ include file="../../common/foot.jspf" %>