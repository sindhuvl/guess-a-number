package com.game.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.game.util.GuessGameUtil;

@SuppressWarnings("serial")
public class GuessANumberServlet extends HttpServlet {
	Random random = new Random();
	int secretNumber = random.nextInt(10 - 1 + 1) + 1;
	int attempt = 0;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/plain");
		attempt = attempt + 1;
		if (req.getParameter("guess") == null || req.getParameter("guess") == "") {
			resp.getWriter().write("You have lost an attempt, Please enter a valid number");
			return;
		}
		
		if(Integer.parseInt(req.getParameter("guess")) > 10 || Integer.parseInt(req.getParameter("guess")) < 1){
			resp.getWriter().write("You have lost an attempt, Please enter a valid number");
			return;
		}
		System.out.println("secret Number ---> " + secretNumber);
		System.out.println("secret attempt ---> " + attempt);
		int guess = Integer.parseInt(req.getParameter("guess"));
		String output = GuessGameUtil.guessStatus(secretNumber, guess, attempt);
		if (output.contains("won")) {
			attempt = 0;
			secretNumber = random.nextInt(10 - 1 + 1) + 1;
		}else if(output.contains("Game Over")) {
			attempt = 0;
			secretNumber = random.nextInt(10 - 1 + 1) + 1;
		}
		resp.setContentType("application/text");
		PrintWriter printWriter = resp.getWriter();
		printWriter.println(output);

	}
}
