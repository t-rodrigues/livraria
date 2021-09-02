package com.thiagorodrigues.domain;

import java.time.LocalDate;

public class Autor {

	private String name;
	private String email;
	private LocalDate dataNascimento;
	private String miniCurriculo;

	public Autor() { }

	public Autor(String name, String email, LocalDate dataNascimento, String miniCurriculo) {
		this.name = name;
		this.email = email;
		this.dataNascimento = dataNascimento;
		this.miniCurriculo = miniCurriculo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
