<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" sizes="57x57"
	href="/img/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/img/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/img/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/img/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/img/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/img/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/img/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/img/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/img/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/img/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/img/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/img/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/img/favicon-16x16.png">
<link rel="manifest" href="/img/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/img/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">



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

	<jsp:include page="${request.contextPath}/cabecalhoPrincipal"></jsp:include>



	<div class="mb-4"></div>
	<div class="mb-4"></div>
	<div class="container col-lg-8 mt-2">

		<div class="row">
			<div class="col-lg-12 mt-3"></div>
		</div>









		<div class="row row-4">

			<c:forEach var="espetaculo" items="${espetaculos}">
				<div class="col-lg-4 col-md-4 mb-4">
					<div class="card h-100" style="max-width: 18rem;">

						<c:choose>
							<c:when test="${espetaculo.imagemEncoded ne null }">
								<a href="#"><img class="card-img-top"
									src="data:image/jpge;base64,${espetaculo.imagemEncoded}" alt=""></a>
							</c:when>
						</c:choose>

						<c:choose>
							<c:when test="${espetaculo.imagemEncoded == null }">
								<a href="#"><img class="card-img-top" src="/img/no-img.jpg"
									alt=""></a>
							</c:when>
						</c:choose>

					
						<div class="card-body">
							<h4 class="card-title">
								<a href="#">${espetaculo.nome}</a>
							</h4>
							<h5>R$ ${espetaculo.valor}</h5>
							<h5>Capacidade:  ${espetaculo.capacidade}</h5>

						</div>
						<div class="card-footer">
							<small class="text-muted"><button
									class="btn btn-primary btn-sm">Comprar</button></small> <small
								class="text-muted">
								<button class="btn btn-success btn-sm" data-toggle="modal" data-id="${espetaculo.descricao}"
									data-target="#exampleModalCenter">Detalhes</button>
							</small>
						</div>
					</div>
				</div>
				</c:forEach>
		</div>


	</div>

	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Descricao
						do Evento</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container mb-6">
						<p>Dados como local e demais informacoes vindas do</p>
						<p>Banco de dados do campo descricao</p>
						<div class="col-6">${espetaculo.descricao}</div> 

					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>

	<jsp:include page="${request.contextPath}/footerPrincipal"></jsp:include>
</body>
</html>