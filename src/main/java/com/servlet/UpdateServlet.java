package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.Factory;
import com.note.Note;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		//doGet(request, response);
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("title");
		String content = request.getParameter("content");
		
		Session session = Factory.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		Note note = (Note)session.get(Note.class, id);
		note.setName(name);
		note.setContent(content);
		note.setAdddate(new Date());
		session.saveOrUpdate(note);
		tx.commit();
		session.close();
		response.sendRedirect("shownotes.jsp");
	}

}
