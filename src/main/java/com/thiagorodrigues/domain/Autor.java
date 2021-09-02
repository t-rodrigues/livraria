package com.thiagorodrigues.domain;

import java.time.LocalDate;

public class Autor {

    private String nome;
    private String email;
    private LocalDate dataNascimento;
    private String miniCurriculo;

    public Autor() {
    }

    public Autor(String nome, String email, LocalDate dataNascimento, String miniCurriculo) {
        this.nome = nome;
        this.email = email;
        this.dataNascimento = dataNascimento;
        this.miniCurriculo = miniCurriculo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String name) {
        this.nome = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getMiniCurriculo() {
        return miniCurriculo;
    }

    public void setMiniCurriculo(String miniCurriculo) {
        this.miniCurriculo = miniCurriculo;
    }

}
