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
					<h4 class=" bg-dark purple-gradient">
						<span class="m-0 text-center text-white ">Cadastro de
							Espetáculo</span>
					</h4>

					<form>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputNome">Nome</label> <input type="text"
									class="form-control" id="inputNome" placeholder="Nome">
							</div>
							<div class="form-group col-md-6">
								<label for="inputCapacidade">Capacidade</label> <input
									type="number" class="form-control" id="inputCapacidade"
									placeholder="Capacidade">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-10">
								<label for="data">Data</label> <input type="date"
									class="form-control" id="data">
							</div>
							<div class="form-group col-md-2">
								<label for="inputAlvara">Destaque</label> <input type="text"
									class="form-control" id="inputAlvara">
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="inputAlvara">Faixa Etaria</label> <input type="text"
									class="form-control" id="inputAlvara">
							</div>
							<div class="form-group col-md-4">
								<label for="inputAlvara">Valor</label> <input type="text"
									class="form-control" id="inputAlvara">
							</div>
						</div>

						<div class="form-row">
							<div class="input-group col-md-12 mb-2">
								<div class="input-group-prepend">
									<span class="input-group-text ">Folder</span>
								</div>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="inputFoto">
									<label class="custom-file-label mb-1" for="inputFoto">Escolha
										uma Foto</label>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="inputAlvara">Descricao</label>
								<textarea id="descricao" rows="10" cols="86" maxlength="2000"></textarea>
							</div>
						</div>


						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="perfil">Casa de Show</label> <select id="perfil"
									class="form-control" name="perfil">
									<option value="">Selecione</option>
									<option value="1">Casa 1|Casa Na Casa 1</option>
									<option value="2">Casa 2|Casa Na Casa 2</option>
									<option value="3">Casa 3|Casa Na Casa 3</option>
								</select>
							</div>
						</div>


						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="cep">CEP</label> <input type="text"
									onblur="pesquisacep(this.value);" class="form-control" id="cep">
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
					
						<button type="submit" class="btn btn-primary">Salvar</button>
					</form>

				</div>
			</div>
		</div>
	</div>


	<jsp:include page="${request.contextPath}/footer"></jsp:include>
	<script type="text/javascript" src="/js/buscaCep.js"></script>
</body>
</html>