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
<spring:url value="/admin/usuarios/salva" var="salva"></spring:url>
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
						<span class="m-0 text-center text-white" style="font-size: 20px">
							Cadastro de Usuário</span>
					</div>

					<form:form action="${salva}" cssClass="needs-validation"
						modelAttribute="usuario">
						<form:hidden path="id" />
						<div class="form-group">
							<label for="nome">Login</label>
							<form:input type="text" cssClass="form-control" id="login"
								path="login" placeholder="Digite o login" />
						</div>

						<div class="form-group">
							<label for="perfil">Perfil</label> <select id="perfil"
								class="form-control" name="perfil">
								<option value="">Selecione</option>
								<c:forEach var="perfis" items="${perfis}">
									<c:choose>
										<c:when test="${usuario.id ne null }">
											<option selected value="${perfis.id}">${perfis.nome}</option>
										</c:when>
										<c:otherwise>
											<option value="${perfis.id}">${perfis.nome}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>

						<div class="form-group">
							<label for="senha1">Digite a Senha</label>
							<form:input type="password" cssClass="form-control" path="senha"
								id="senha1" placeholder="Digite a Senha" />
						</div>


						<div class="form-group">
							<label for="senha2">Repita a Senha</label>

							<c:choose>
								<c:when test="${usuario.id ne null }">
									<input type="password" onblur="validaSenha()"
										value="${usuario.senha}" class="form-control" id="senha2"
										placeholder="Repita a Senha">
								</c:when>
								<c:otherwise>
									<input type="password" onblur="validaSenha()" value=""
										class="form-control" id="senha2" placeholder="Repita a Senha">
								</c:otherwise>
							</c:choose>
						</div>

						<div class="form-group">
							<div class="form-check">
								<form:label path="ativo">Ativo</form:label>
								<form:checkbox path="ativo" />
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
						<button class="btn btn-danger" type="reset">Cancelar</button>
					</form:form>


					<div class="row">
						<div class="col-md-12">
							<c:if test="${not empty usuarios}"></c:if>
							<table class="table table-striped">
								<thead class="thead">
									<tr>
										<th scope="col">Codigo</th>
										<th scope="col">Login</th>
										<th scope="col">Perfil</th>
										<th scope="col">Ativo</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="usuario" items="${usuarios}">
										<tr>
											<td>${usuario.id}</td>
											<td>${usuario.login}</td>
											<td>${usuario.perfil.nome}</td>
											<td><c:if test="${usuario.ativo == true }">
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
	<script type="text/javascript">
		function validaSenha() {

			var senhaDigitada = document.getElementById('senha1').value;
			var senhaConfirmacao = document.getElementById('senha2').value;

			if (senhaDigitada != senhaConfirmacao) {
				alert("Senhas não confere\ Digite novamente");
				document.getElementById('senha1').value = "";
				document.getElementById('senha2').value = "";
				document.getElementById('senha1').focus();
				return false;
			}
		}
	</script>
</body>
</html>