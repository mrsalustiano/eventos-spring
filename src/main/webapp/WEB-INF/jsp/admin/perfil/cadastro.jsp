<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eventos - Qintess</title>
<spring:url value="/admin/perfil/deleta/" var="deleta"></spring:url>
<spring:url value="/admin/perfil/altera/" var="altera"></spring:url>
<spring:url value="/admin/perfis/salva" var="salva"></spring:url>

<link
	href='<spring:url value="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />'
	rel="stylesheet" />
<!-- Bootstrap core CSS -->
<link href='<spring:url value="/css/bootstrap.min.css"/>'
	rel="stylesheet" />
<!-- Material Design Bootstrap -->
<link href='<spring:url value="/css/mdb.min.css"/>' rel="stylesheet" />
<!-- Your custom styles (optional) -->
<link href='<spring:url value="/css/style.css"/>' rel="stylesheet" />

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript"
	src='<spring:url value="/js/jquery-3.3.1.min.js" />'></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src='<spring:url value="/js/popper.min.js" />'></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src='<spring:url value="/js/bootstrap.min.js"  />'></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src='<spring:url value="/js/mdb.min.js"  />'></script>
<style>
.footer {
	position: fixed;
	bottom: 0px;
	width: 100%;
	height: 40px;
	line-height: 30px;
	background-color: #f5f5f5;
}
</style>

<!-- Font Awesome -->
</head>
</head>
<body>
	<jsp:include page="${request.contextPath}/cabecalho"></jsp:include>

	<div class="container mt-5 ">
		<br>
		<div class="col-lg-9">
			<c:if test="${not empty mensagemErro }">
				<div id="divMensagemErro" class="alert alert-danger" role="alert">
					${erro }</div>
			</c:if>

			<c:if test="${not empty mensagemSucesso }">
				<div id="divMensagemSucesso" class="alert alert-success"
					role="alert">${sucesso }</div>
			</c:if>
		</div>

		<div class="container mb-5">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<h4 class=" bg-dark purple-gradient">
						<p class="m-0 text-center text-white">Cadastro de Perfil do
							Usuario</p>
					</h4>



					<form:form action="${salva}" cssClass="needs-validation"
						modelAttribute="perfil">
						<form:hidden path="id" />
						<div class="form-row">
							<div class="col-md-6 mb-3">
								<label>Nome do Perfil</label>
								<form:input path="nome" cssClass="form-control"
									placeholder="Nome" />
							</div>

							<div class="col-md-6 mb-3">
								<label>Descricao</label>
								<form:input path="descricao" cssClass="form-control"
									placeholder="Descrição" />
							</div>
						</div>

						<div class=" mb-3">
							<form:label path="ativo">Ativo</form:label>
							<form:checkbox path="ativo" />
						</div>

						<div class="row">
							<div class="col-md-8 offset-md-2">
								<button class="btn btn-primary" type="submit">Salvar</button>
								<button class="btn btn-danger" type="reset">Cancelar</button>
							</div>
						</div>
					</form:form>
					<div class="row">
						<div class="col-md-8 offset-md-2">
							<c:if test="${not empty perfis}"></c:if>
							<table class="table table-striped">
								<thead class="thead">
									<tr>
										<th scope="col">Codigo</th>
										<th scope="col">Nome</th>
										<th scope="col">Descrição</th>
										<th scope="col">Ativo</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="perfil" items="${perfis}">
										<tr>
											<td>${perfil.id}</td>
											<td>${perfil.nome}</td>
											<td>${perfil.descricao}</td>
											<td><c:if test="${perfil.ativo == true }">
													<input type="checkbox" checked="checked"
														disabled="disabled">
												</c:if> <c:if test="${perfil.ativo == false }">
													<input type="checkbox" disabled="disabled">
												</c:if></td>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="${request.contextPath}/footer"></jsp:include>
</body>
</html>