package com.thiagorodrigues.livraria.factory;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    public static Connection getConnection() {
        String url = "jdbc:mysql://localhost:3306/livraria";
        String usuario = "docker";
        String senha = "docker";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            return DriverManager.getConnection(url, usuario, senha);
        } catch (Exception e) {
            System.out.println("Ocorreu um erro!");
            throw new RuntimeException(e);
        }
    }

}
