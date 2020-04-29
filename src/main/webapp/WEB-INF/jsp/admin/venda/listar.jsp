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
<body>
	<jsp:include page="${request.contextPath}/cabecalho"></jsp:include>
	<div class="container mt-5 ">
		<br>
		
		<div class="container mb-5">
		
				<div class="panel-footer text-center bg-dark purple-gradient">
					<span class="m-0 text-center text-white" style="font-size: 20px">Listagem
						de Vendas</span>
				</div>
		
				<hr>

				<c:if test="${not empty venda}"></c:if>
				<table class="table table-sm table-striped">
					<thead class="thead">
						<tr>
							<th scope="col">Codigo</th>
							<th scope="col">Cliente</th>
							<th scope="col">Espetáculo</th>
							<th scope="col">Quantidade</th>
							<th scope="col">Valor</th>
					

						</tr>
					</thead>
					<tbody>
						<c:forEach var="vendas" items="${venda}">
							<tr>
								<td>${vendas.id}</td>
								<td>${vendas.cliente.nome}</td>
								<td>${vendas.espetaculo.nome}</td>
								<td>${vendas.quantidade}</td>
								<td>R$ ${vendas.valor } </td>
								
						
							</tr>

						</c:forEach>
					</tbody>
				</table>
				<button class="btn btn-success" type="button" onclick="javascript:history.back()">Voltar</button>
			</div>
		</div>


		<jsp:include page="${request.contextPath}/footer"></jsp:include>
	
</body>
</html>