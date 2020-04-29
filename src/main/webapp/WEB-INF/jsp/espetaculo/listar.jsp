<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eventos - Qintess</title>
<spring:url value="/vendas/comprar" var="comprar"></spring:url>

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
						<th scope="col">Casa de Show</th>
						<th scope="col" colspan="2">Ações</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="espetaculo" items="${espetaculos}">
						<tr>
							
							<td>${espetaculo.nome}</td>
							<td><tags:localDate date="${espetaculo.dataEspetaculo}" /> </td>
							<td>${espetaculo.valor}</td>
							<td>${espetaculo.capacidade }</td>
							<td>${espetaculo.casa.nome}</td>
							<td><a href="${comprar}/${espetaculo.id}" class="btn btn-info">Comprar</a></td>
							<td><button class="btn btn-success modal-btn" data-toggle="modal" data-some-id="${espetaculo.descricao}" data-nome="descricao"
									data-target="#exampleModalCenter">Detalhes</button>
								</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<button class="btn btn-success" type="button" onclick="javascript:history.back()">Voltar</button>
		</div>
	</div>

		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"><b >Descrição	do Evento</b></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container mb-6">
						<div class="modal-body modal-content">
     						<p  name="hiddenValue" id="hiddenValue" ></p>
   						</div> 

					</div>

				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>
	
	

		<jsp:include page="${request.contextPath}/footer"></jsp:include>
		<script type="text/javascript">
	    $(function () {
	        $(".modal-btn").click(function (){
	          var data_var = $(this).data('some-id');
	          $(".modal-body p").text(data_var);
	        })
	       });

		</script>
	
</body>
</html>