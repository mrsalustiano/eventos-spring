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
<spring:url value="/admin/usuarios/deleta/" var="deleta"></spring:url>
<spring:url value="/admin/usuarios/altera/" var="altera"></spring:url>
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
			<h4>Listagem de Usuario</h4>
			<hr>


	
			<c:if test="${not empty usuarios}"></c:if>
				<table class="table table-sm table-striped">
					<thead class="thead">
						<tr>
							<th scope="col">Codigo</th>
							<th scope="col">Login</th>
							<th scope="col">Perfil</th>
							<th scope="col">Ativo</th>
							<th scope="col" colspan="2">Ações</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="usuario" items="${usuarios}">
							<tr >
								<td>${usuario.id}</td>
								<td>${usuario.login}</td>
								<td>${usuario.perfil}</td>
								<td>
									<c:if test="${usuario.ativo == true }">
								    	<input type="checkbox" checked="checked" disabled="disabled">
									</c:if> 
									<c:if test="${usuario.ativo == false }">
									    <input type="checkbox"  disabled="disabled">
									</c:if> 								
								</td>
								
							<td><a href="${altera}${usuario.id}" class="btn btn-info">Alterar</a></td>
							<td><a href="#" class="btn btn-danger" data-href="${deleta}${usuario.id}" data-toggle="modal"
										data-target="#confirm-delete">Apagar</a><br></td>	  
						</tr>
						
						</c:forEach>
					</tbody>
				</table>

		</div>
	</div>

	<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<h4 class="modal-title" id="myModalLabel">Confirmar Remoção</h4>
				</div>

				<div class="modal-body">
					<p>Você está prestes a excluir o registro , esse
						procedimento é irreversível!</p>
					<p>Deseja prosseguir?</p>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<a class="btn btn-danger btn-ok">Delete</a>
				</div>
			</div>
		</div>

</div>
	<jsp:include page="${request.contextPath}/footer"></jsp:include>
	<script type="text/javascript">
		$(document).ready(function() {
			//na div de id (#) divMensagemErro
			//terá uma espera (delay) de 5 secs (5000ms)
			//será feito um fadeOut lento (frescura)
			$('#divMensagemErro').delay(5000).fadeOut('slow');
			$('#divMensagemSucesso').delay(5000).fadeOut('slow');
		});
	</script>
	<script>
		$('#confirm-delete').on(
				'show.bs.modal',
				function(e) {
					$(this).find('.btn-ok').attr('href',
							$(e.relatedTarget).data('href'));

					 $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
				});
	</script>
</body>
</html>