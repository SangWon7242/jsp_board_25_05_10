<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Jakarta EE 9+ 새로운 방식 -->
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="JSP 회원 가입" />

<%@ include file="../../common/head.jspf" %>

<script>
  function MemberSave_submitFrom(form) {
    form.username.value = form.username.value.trim();

    if(form.username.value.length == 0) {
      alert("로그인 아이디를 입력해주세요");
      form.username.focus();
      return;
    }

    form.password.value = form.password.value.trim();

    if(form.password.value.length == 0) {
      alert("비밀번호를 입력해주세요");
      form.password.focus();
      return;
    }

    form.passwordConfirm.value = form.passwordConfirm.value.trim();

    if(form.passwordConfirm.value.length == 0) {
      alert("비밀번호 확인을 입력해주세요");
      form.passwordConfirm.focus();
      return;
    }

    if(form.password.value !=  form.passwordConfirm.value) {
      alert("비밀번호가 일치하지 않습니다.");
      form.password.value = ''; // 비밀번호 필드 초기화
      form.passwordConfirm.value = ''; // 비밀번호 확인 필드 초기화
      form.password.focus();
      return;
    }

    form.name.value = form.name.value.trim();

    if(form.name.value.length == 0) {
      alert("이름을 입력해주세요");
      form.name.focus();
      return;
    }

    form.submit();
  }
</script>

<div class="container mx-auto px-4">
  <div class="max-w-2xl mx-auto pt-16">
    <h1 class="text-3xl font-bold text-center mb-8">
      <i class="fas fa-user-plus mr-2"></i>
      <span>회원 가입</span>
    </h1>

    <form method="POST" onsubmit="MemberSave_submitFrom(this); return false;" class="card bg-base-100 shadow-xl p-8">
      <!-- 아이디 입력 -->
      <div class="form-control w-full mb-4">
        <label class="label">
          <span class="label-text">
            <i class="fas fa-user mr-2"></i>아이디
          </span>
        </label>
        <input type="text" name="username"
               placeholder="아이디를 입력해주세요"
               class="input input-bordered w-full"
               required />
      </div>

      <!-- 비밀번호 입력 -->
      <div class="form-control w-full mb-4">
        <label class="label">
          <span class="label-text">
            <i class="fas fa-lock mr-2"></i>
            <span>비밀번호</span>
          </span>
        </label>
        <input type="password" name="password"
               placeholder="비밀번호를 입력해주세요"
               class="input input-bordered w-full"
               required />
      </div>

      <!-- 비밀번호 확인 -->
      <div class="form-control w-full mb-4">
        <label class="label">
          <span class="label-text">
            <i class="fas fa-lock mr-2"></i>
            <span>비밀번호 확인</span>
          </span>
        </label>
        <input type="password" name="passwordConfirm"
               placeholder="비밀번호를 확인을 입력해주세요"
               class="input input-bordered w-full"
               required />
      </div>

      <!-- 이름 입력 -->
      <div class="form-control w-full mb-4">
        <label class="label">
          <span class="label-text">
            <i class="fas fa-signature mr-2"></i>
            <span>이름</span>
          </span>
        </label>
        <input type="text" name="name"
               placeholder="이름을 입력해주세요"
               class="input input-bordered w-full"
               required />
      </div>

      <!-- 버튼 그룹 -->
      <div class="flex justify-center gap-4">
        <button type="submit" class="btn btn-primary">
          <i class="fas fa-user-plus mr-2"></i>
          <span>회원가입</span>
        </button>
        <a href="/" class="btn btn-secondary">
          <i class="fas fa-times mr-2"></i>
          <span>취소</span>
        </a>
      </div>
    </form>
  </div>
</div>

<%@ include file="../../common/foot.jspf" %>