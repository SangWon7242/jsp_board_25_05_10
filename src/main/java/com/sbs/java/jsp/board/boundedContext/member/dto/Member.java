package com.sbs.java.jsp.board.boundedContext.member.dto;

import lombok.Data;

@Data
public class Member {
  private final int id;
  private String username;
  private String password;
  private String name;
}
