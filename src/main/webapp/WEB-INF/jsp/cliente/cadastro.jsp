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
		<div class="col-lg-9">
			<c:if test="${not empty erro }">
				<div id="divMensagemErro" class="alert alert-danger" role="alert">
					${erro }</div>
			</c:if>

			<c:if test="${not empty sucesso }">
				<div id="divMensagemSucesso" class="alert alert-success"
					role="alert">${sucesso }</div>
			</c:if>
		</div>

		<div class="container mb-5">
			<div class="row">
				<div class="col-md-8 offset-md-2">
				
					<div class="panel-footer text-center bg-dark purple-gradient">
						<span class="m-0 text-center text-white" style="font-size:20px"> Cadastro de Cliente</span>
					</div>
	
					<form>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputNome">Nome</label> <input type="text"
									class="form-control" id="inputNome" placeholder="Nome">
							</div>
							<div class="form-group col-md-6">
								<label for="inputCapacidade">CPF</label> <input type="text"
									class="form-control" id="cpf"
									onkeypress="$(this).mask('000.000.000-00')" placeholder="CPF">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="data">Data de Nascimento</label> <input type="date"
									class="form-control" id="data">
							</div>
							<div class="form-group col-md-6">
								<label for="inputAlvara">Email</label> <input type="text"
									onblur="validaEmail(this.value)" class="form-control"
									id="inputAlvara">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="sexo">Sexo</label> <select id="perfil"
									class="form-control" name="perfil">
									<option value="">Selecione</option>
									<option value="M">Masculino</option>
									<option value="F">Feminino</option>
								</select>
							</div>

							<div class="form-group col-md-4">
								<label for="inputAlvara">Telefone</label> <input type="text"
									onkeypress="$(this).mask('(00) 0000-0000')"
									class="form-control" id="inputAlvara">
							</div>

							<div class="form-group col-md-4">
								<label for="inputAlvara">Celular</label> <input type="text"
									onkeypress="$(this).mask('(00) 0000-00000')"
									class="form-control" id="inputAlvara">
							</div>
						</div>



						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="cep">CEP</label> <input type="text"
									onblur="pesquisacep(this.value);"
									onkeypress="$(this).mask('00000-000')" class="form-control"
									id="cep">
							</div>
							<div class="form-group col-md-8">
								<label for="logradouro">Logradouro</label> <input type="text"
									class="form-control" id="logradouro">
							</div>
							<div class="form-group col-md-2">
								<label for="numero">Numero</label> <input type="text"
									placeholder="Numero" class="form-control" id="numero">
							</div>

						</div>



						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="bairro">Bairro</label> <input type="text"
									class="form-control" id="bairro">
							</div>
							<div class="form-group col-md-8">
								<label for="complemento">Complemento</label> <input type="text"
									class="form-control" id="complemento" placeholder="complemento">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-10">
								<label for="cidade">Cidade</label> <input type="text"
									class="form-control" id="cidade">
							</div>
							<div class="form-group col-md-2">
								<label for="uf">Estado</label> <input type="text"
									class="form-control" id="uf">
							</div>

						</div>

						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="newsletter">
								<label class="form-check-label" for="newsletter"> Deseja
									Receber Newsletter </label>
							</div>
						</div>

						<button type="submit" class="btn btn-primary">Salvar</button>
					</form>

				</div>
			</div>
		</div>
	</div>


	<jsp:include page="${request.contextPath}/footerPrincipal"></jsp:include>
	<script type="text/javascript" src="/js/buscaCep.js"></script>
	<script type="text/javascript" src="/js/funcoes.js"></script>
</body>
</html>