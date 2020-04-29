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
<spring:url value="/vendas/salva" var="salva"></spring:url>

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
		<div class="col-lg-9"></div>

		<div class="container mb-5  col-8">
			<div class="row">
				<div class="col-md-8 offset-md-2">

					<div class="panel-footer text-center bg-dark purple-gradient">
						<span class="m-0 text-center text-white" style="font-size: 20px">
							Vendas </span>
					</div>

					<form:form action="${salva}" cssClass="needs-validation"
						modelAttribute="venda">
						<form:hidden path="id" />


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


						<!--   Cliente -->
						<div class="form-group">
							<label for="cliente">Cliente</label> <select id="cliente"
								class="form-control" name="cliente">
								<option value="">Selecione</option>
								<c:forEach var="clientes" items="${clientes}">
									<c:choose>
										<c:when test="${compra.id ne null }">
											<option selected value="${clientes.id}">${clientes.nome}</option>
										</c:when>
										<c:otherwise>
											<option value="${clientes.id}">${clientes.nome}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						
						</div>
						<!--   Compras -->

						<!--   Espetaculo -->

						<div class="form-group">
							<label for="espetaculo">Espetaculo</label> <select
								id="espetaculo" class="form-control " name="espetaculo">
								<option value="">Selecione</option>
								<c:forEach var="espetaculos" items="${espetaculos}">
									<c:choose>
										<c:when test="${cliente.id ne null}">
											<c:if test="${espetaculo.id == idEspetaculo }">teste</c:if>
											<option selected value="${espetaculos.id}">${espetaculos.nome}</option>
										</c:when>
										<c:otherwise>
											<option value="${espetaculos.id}">${espetaculos.nome}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
							
						</div>
						<!--   Compras -->

						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputQuantidade">Quantidade</label>
								<form:input type="text" cssClass="form-control " 
									id="inputquantidade" path="quantidade" />
							
							</div>

						</div>



						<button type="submit" class="btn btn-primary">Confirmar</button>
						<button class="btn btn-success" type="button"
							onclick="javascript:history.back()">Voltar</button>

					</form:form>

				</div>
			</div>
		</div>
	</div>


	<jsp:include page="${request.contextPath}/footerPrincipal"></jsp:include>
	<script type="text/javascript">
		
	</script>
</body>
</html>