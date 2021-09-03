package com.thiagorodrigues.livraria.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thiagorodrigues.livraria.dao.AutorDao;
import com.thiagorodrigues.livraria.domain.Autor;
import com.thiagorodrigues.livraria.factory.ConnectionFactory;

@WebServlet("/autores")
public class AutorServlet extends HttpServlet {

    private AutorDao dao;

    public AutorServlet() {
        this.dao = new AutorDao(ConnectionFactory.getConnection());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<Autor> autores = dao.listar();

        req.setAttribute("autores", autores);
        req.getRequestDispatcher("WEB-INF/jsp/autores.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        LocalDate dataNascimento = LocalDate.parse(req.getParameter("dataNascimento"),
                DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        String miniCurriculo = req.getParameter("miniCurriculo");

        Autor autor = new Autor(nome, email, dataNascimento, miniCurriculo);

        dao.cadastrar(autor);

        res.sendRedirect("autores");
    }

}
