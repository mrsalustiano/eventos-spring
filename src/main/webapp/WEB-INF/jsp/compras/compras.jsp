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
						<span class="m-0 text-center text-white" style="font-size: 20px">
							Compras </span>
					</div>

					<form>

						<div class="form-row">
							<div class="form-group col-md-12">
								<div class="form-group">
									<label for="Cliente">Cliente</label> <select id="cliente"
										class="form-control" name="Cliente">
										<option value="">Selecione</option>
										<option value="1">Ze</option>
										<option value="2">Joao</option>
									</select>
								</div>
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-12">
								<div class="form-group">
									<label for="espetaculo">Espetaculo</label> <select id="espetaculo"
										class="form-control" name="espetaculo">
										<option value="">Selecione</option>
										<option value="1">Rango Livre</option>
										<option value="2">Live on-line</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputQuantidade">Quantidade</label> <input type="number"  max="4"
									class="form-control" id="inputquantidade">
							</div>
							<div class="form-group col-md-6">
								<label for="inputValor">Valor</label> <input type="text"
									class="form-control" id="valor"	 >
							</div>
						</div>
						
						
						
						<button type="submit" class="btn btn-primary">Confirmar</button>
					</form>

				</div>
			</div>
		</div>
	</div>


	<jsp:include page="${request.contextPath}/footerPrincipal"></jsp:include>
</body>
</html>