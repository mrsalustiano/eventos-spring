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
<spring:url value="/clientes/salva" var="salva"></spring:url>

<link
	href='<spring:url value="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />'
	rel="stylesheet" />
<!-- Bootstrap core CSS -->
<link href='<spring:url value="/css/bootstrap.min.css"/>'
	rel="stylesheet" />
<!-- Material Design Bootstrap -->
<link href='<spring:url value="/css/mdb.min.css"/>' rel="stylesheet" />
<!-- Your custom styles (optional) -->
<link href='<spring:url value="/css/style-foto.css"/>' rel="stylesheet" />

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
<script type="text/javascript"
	src='<spring:url value="/js/jquery.mask.js"  />'></script>

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
	<jsp:include page="${request.contextPath}/cabecalhoPrincipal"></jsp:include>

	<div class="container mt-5 ">
		<br>


		<div class="container mb-5">
			<div class="row">
				<div class="col-md-8 offset-md-2">

					<div class="panel-footer text-center bg-dark purple-gradient">
						<span class="m-0 text-center text-white" style="font-size: 20px">
							Cadastro de Cliente</span>
					</div>

					<form:form action="${salva}" method="POST" modelAttribute="cliente" cssClass="mb-2">
						<form:hidden path="id"/>
						
						<div class="form-row">
							<div class="col-12">
								<c:if test="${not empty mensagemErro }">
									<div id="divMensagemErro" class="alert alert-danger"
										role="alert">${mensagemErro}</div>
								</c:if>

								<c:if test="${not empty mensagemSucesso }">
									<div id="divMensagemSucesso" class="alert alert-success"
										role="alert">${mensagemSucesso}</div>
								</c:if>
							</div>

							<div class="form-group col-md-6">
								<label for="inputNome">Nome</label> <form:input type="text" path="nome"
									class="form-control" id="inputNome" placeholder="Nome"/>
							</div>
							<div class="form-group col-md-6">
								<label for="cpf">CPF</label> <form:input type="text"
									class="form-control" id="cpf"
									onkeypress="$(this).mask('000.000.000-00')" placeholder="CPF" path="cpf"/>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputEmail">Email</label> <form:input type="text"
									onblur="validaEmail(this.value)" class="form-control"
									placeholder="Digite o Email" id="inputEmail"  path="email"/>
							</div>
							<div class="form-group col-md-6">
								<label for="inputCelular">Celular</label> <form:input type="text"
									placeholder="Digite o Celular"
									onkeypress="$(this).mask('(00) 0000-00000')"
									class="form-control" id="inputCelular" path="celular" />
							</div>

						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="senha1">Digite a Senha</label> <form:input
									type="password" Class="form-control" id="senha1" path="senhaCliente"
									placeholder="Digite a Senha"/>
							</div>
				
						</div>

						<div class="form-group">
							<div class="form-check">
								<form:checkbox  path="newsletter"/>
								<label class="form-check-label" for="newsletter"> Deseja
									Receber Newsletter </label>
							</div>
						</div>

						<button type="submit" class="btn btn-primary">Salvar</button>
						<button type="reset" class="btn btn-danger">Cancelar</button>
						<button class="btn btn-success" type="button" onclick="javascript:history.back()">Voltar</button>
					</form:form>

				</div>
			</div>
		</div>
	</div>


	<jsp:include page="${request.contextPath}/footerPrincipal"></jsp:include>
	<script type="text/javascript" src="/js/funcoes.js"></script>
</body>
</html>