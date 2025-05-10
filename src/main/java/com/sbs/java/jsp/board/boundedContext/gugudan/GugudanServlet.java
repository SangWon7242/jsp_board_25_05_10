package com.sbs.java.jsp.board.boundedContext.gugudan;

import com.sbs.java.jsp.board.boundedContext.global.base.Rq;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    Rq rq = new Rq(req, resp);

    int dan = rq.getIntParam("dan", 9);
    int limit = rq.getIntParam("limit", 9);
    rq.appendBody("<h1>== 구구단 %d단 ==</h1>\n".formatted(dan));

    for(int i = 1; i <= limit; i++) {
      rq.appendBody("<div>%d * %d = %d</div>\n".formatted(dan, i, dan * i));
    }
  }
}
