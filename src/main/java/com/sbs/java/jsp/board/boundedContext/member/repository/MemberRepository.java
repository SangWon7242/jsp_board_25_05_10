package com.sbs.java.jsp.board.boundedContext.member.repository;

import com.sbs.java.jsp.board.boundedContext.member.dto.Member;

import java.util.ArrayList;
import java.util.List;

public class MemberRepository {
  private List<Member> memberList;
  private long lastId;

  public MemberRepository() {
    memberList = new ArrayList<>();
    lastId = 0;
  }

  public Member findByUsername(String username) {
    return memberList.stream()
        .filter(member -> member.getUsername().equals(username))
        .findFirst()
        .orElse(null);
  }

  public void join(String username, String password, String name) {
    long id = ++lastId;

    Member member = new Member(id, username, password, name);
    memberList.add(member);
  }
}
