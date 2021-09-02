<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>Livraria Online</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>

	<header class="bg-dark text-uppercase fs-3 text fw-bold text-light p-3">Autores</header>

	<section class="container card mt-5 p-4">
		<h2 class="text-uppercase text-center">Cadastro de Autor</h2>

		<form class="form" action="<c:url value="/autores"/>" method="post">
			<div class="form-group mt-2">
				<label for="nome">Nome</label>
				<input id="nome" name="nome" type="text" class="form-control" />
			</div>

			<div class="form-group mt-2">
				<label for="dataNascimento">Data de nascimento</label>
				<input id="dataNascimento" name="dataNascimento" type="text" class="form-control" />
			</div>

			<div class="form-group mt-2">
				<label for="email">E-mail</label>
				<input id="email" name="email" type="email" class="form-control" />
			</div>

			<div class="form-group mt-2">
				<label for="miniCurriculo">Mini-currículo</label>
				<textarea id="miniCurriculo" name="miniCurriculo" class="form-control"></textarea>
			</div>

			<input class="btn btn-primary mt-5" type="submit" />
		</form>
	</section>

	<section class="container card mt-5 p-4">
		<h1 class="text-center">Lista de Autores</h1>

		<table class="table table-hover table-striped table-border">
			<thead class="table-primary">
				<tr>
					<th>NOME</th>
					<th>EMAIL</th>
					<th>DATA NASCIMENTO</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${autores}" var="a">
					<tr>
						<td>${a.nome}</td>
						<td>${a.email}</td>
						<td>${a.dataNascimento}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>

</body>
</html>
