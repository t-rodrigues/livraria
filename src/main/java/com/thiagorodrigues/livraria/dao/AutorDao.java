package com.thiagorodrigues.livraria.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.thiagorodrigues.livraria.domain.Autor;

public class AutorDao {

    private Connection conexao;

    public AutorDao(Connection conexao) {
        this.conexao = conexao;
    }

    public void cadastrar(Autor autor) {
        try {
            String sql = "INSERT INTO autores (nome, email, data_nascimento, mini_curriculo) values (?, ?, ?, ?)";

            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, autor.getNome());
            ps.setString(2, autor.getEmail());
            ps.setDate(3, Date.valueOf(autor.getDataNascimento()));
            ps.setString(4, autor.getMiniCurriculo());

            ps.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Autor> listar() {
        try {
            String sql = "SELECT * FROM autores";

            PreparedStatement ps = conexao.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            List<Autor> autores = new ArrayList<>();

            while (rs.next()) {
                Autor autor = new Autor();
                autor.setNome(rs.getString("nome"));
                autor.setEmail(rs.getString("email"));
                autor.setDataNascimento(rs.getDate("data_nascimento").toLocalDate());
                autor.setMiniCurriculo(rs.getString("mini_curriculo"));

                autores.add(autor);
            }

            return autores;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
