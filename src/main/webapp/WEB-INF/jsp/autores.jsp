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

	<section class="container mt-5">
		<div class="card">
			<div class="card-header">
				<h2 class="text-uppercase text-center">Cadastro de Autor</h2>
			</div>
	
			<form class="p-4" action="<c:url value="/autores"/>" method="post">
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
		</div>
	</section>

	<section class="container mt-5">
		<div class="card">
			<div class="card-header">
				<h2 class="text-uppercase text-center">Lista de Autores</h2>
			</div>
			
			<div class="p-4">
				<table class="table table-hover table-striped table-bordered">
					<thead class="table-light">
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
			</div>
		</div>
	</section>

</body>
</html>
