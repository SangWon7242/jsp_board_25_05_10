<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int dan = Integer.parseInt(request.getParameter("dan"));
int limit = Integer.parseInt(request.getParameter("limit"));

String name = "홍길동";
int age = 10;
%>

<h1><%=dan%>단</h1>
<% for(int i = 1; i <= limit; i++) { %>
<div><%=dan%> * <%=i%> = <%=dan * i%></div>
<% } %>


<!-- 테스트 -->
<% if(age >= 20) { %>
<div>성인입니다.</div>
<% } else { %>
<div>미성년자입니다.</div>
<% } %>

<h1>
    <% out.println(age + "살 입니다."); %>
</h1>

<h1>
    <%=age%>살 입니다.
</h1>

<h1>
    10살 입니다.
</h1>