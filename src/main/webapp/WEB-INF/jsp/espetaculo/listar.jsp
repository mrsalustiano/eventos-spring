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
	<jsp:include page="${request.contextPath}/cabecalhoPrincipal"></jsp:include>

	<div class="container mt-5 ">
		<br>
	
		<div class="container mb-5">
			<div class="panel-footer text-center bg-dark purple-gradient">
				<span class="m-0 text-center text-white" style="font-size: 20px">Listagem
					de Espetáculo</span>
			</div>
			<hr>

			<c:if test="${not empty espetaculos}"></c:if>
			<table class="table table-sm table-striped">
				<thead class="thead">
					<tr>
						<th scope="col">Nome</th>
						<th scope="col">Data</th>
						<th scope="col">Valor</th>
						<th scope="col">Capacidade</th>
						<th scope="col">Faixa Etaria</th>
						<th scope="col">Casa de Show</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="espetaculo" items="${espetaculos}">
						<tr>
							
							<td>${espetaculo.nome}</td>
							<td>${espetaculo.dataEspetaculo}</td>
							<td>${espetaculo.valor}</td>
							<td>${espetaculo.capacidade }</td>
							<td>${espetaculo.faixaEtaria}</td>
							<td>${espetaculo.casa.nome}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>

	
	<jsp:include page="${request.contextPath}/footerPrincipal"></jsp:include>
	
</body>
</html>