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
<spring:url value="/admin/espetaculos/salva" var="salva"></spring:url>

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


		<div class="container mb-5">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="panel-footer text-center bg-dark purple-gradient">
						<span class="m-0 text-center text-white" style="font-size: 20px">
							Cadastro de Espetáculo</span>
					</div>

					<form:form action="${salva}" method="POST"
						modelAttribute="espetaculo" enctype="multipart/form-data"
						cssClass="mb-2">

						<form:hidden path="id" />
						<form:hidden path="imagemCasa" />

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

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputNome">Nome</label>
								<form:input type="text" path="nome" class="form-control"
									id="inputNome" placeholder="Nome" />
							</div>
							<div class="form-group col-md-6">
								<label for="inputCapacidade">Capacidade</label>
								<form:input type="number" class="form-control"
									id="inputCapacidade" path="capacidade" placeholder="Capacidade" />
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-10">
								<label for="data">Data</label>
								<form:input type="date" path="dataEspetaculo"
									class="form-control" id="data" />
							</div>
							<div class="form-group col-md-2">
								<label for="inputDestaque">Destaque</label>
								<form:input type="number" max="1" path="destaque"
									class="form-control" id="inputDestaque" />
							</div>
						</div>

						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="inputFaixa">Faixa Etaria</label>
								<form:input type="text" path="faixaEtaria" class="form-control"
									id="inputFaixa" />
							</div>
							<div class="form-group col-md-4">
								<label for="inputValor">Valor</label>
								<form:input type="text" path="valor" class="form-control"
									id="inputValor" />
							</div>
						</div>

						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Upload Foto</span>
							</div>
							<div class="custom-file">
								<input type="file" class="custom-file-input" name="imagem"
									value="${espetaculo.imagemEncoded }" id="inputFoto"> <label
									class="custom-file-label" for="inputFoto">Escolha uma
									Foto</label>
							</div>
						</div>

						<c:if test="${espetaculo.id ne null}">

							<!-- a imagem será exibida somente no carregaAlterar -->
							<div class="mb-5">
								<c:choose>
									<c:when test="${espetaculo.imagemEncoded ne null }">
										<a href="#"><img class="img-thumbnail"
											src="data:image/jpge;base64,${espetaculo.imagemEncoded}"
											alt=""></a>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${espetaculo.imagemEncoded == '' }">
										<a href="#"><img class="img-thumbnail"
											src="/img/no-img.jpg" alt="imagem não encontrada"></a>
									</c:when>
								</c:choose>
							</div>
						</c:if>




						<div class="form-row">
							<div class="form-group col-md-8">
								<label for="inputDescricao">Descricao</label>
								<form:textarea path="descricao" id="descricao" rows="10"
									cols="86" maxlength="10000" />
							</div>
						</div>


						<div class="form-group">
							<label for="casasLista">Casa de Show</label> <select id="casa"
								class="form-control" name="casa">
								<option value="">Selecione</option>
								<c:forEach var="casa" items="${casa}">
									<c:choose>
										<c:when test="${espetaculo.id ne null }">
											<option selected value="${casa.id}">${casa.nome}</option>
										</c:when>
										<c:otherwise>
											<option value="${casa.id}">${casa.nome}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>


						<button type="submit" class="btn btn-primary">Salvar</button>
						<button class="btn btn-danger" type="reset">Cancelar</button>
						<button class="btn btn-success" type="button"
							onclick="javascript:history.back()">Voltar</button>
					</form:form>

					<div class="row">
						<div class="col-md-12 ">
							<c:if test="${not empty espetaculos}"></c:if>
							<table class="table table-striped">
								<thead class="thead">
									<tr>
										<th scope="col">Codigo</th>
										<th scope="col">Nome</th>
										<th scope="col">Data</th>
										<th scope="col">Valor</th>
										<th scope="col">Faixa Etaria</th>
										<th scope="col">Casa de Show</th>
										<th scope="col">Foto</th>



									</tr>
								</thead>
								<tbody>
									<c:forEach var="espetaculo" items="${espetaculos}">
										<tr>
											<td>${espetaculo.id}</td>
											<td>${espetaculo.nome}</td>
											<td>${espetaculo.dataEspetaculo}</td>
											<td>${espetaculo.valor}</td>
											<td>${espetaculo.faixaEtaria}</td>
											<td>${espetaculo.casa.nome}</td>
											<td><c:if test="${espetaculo.imagemCasa  != null }">
													<input type="checkbox" checked="checked"
														disabled="disabled">
												</c:if> <c:if test="${espetaculo.imagemCasa == null }">
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
	<script type="text/javascript" src="/js/buscaCep.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//na div de id (#) divMensagemErro
			//terá uma espera (delay) de 5 secs (5000ms)
			//será feito um fadeOut lento (frescura)
			$('#divMensagemErro').delay(5000).fadeOut('slow');
			$('#divMensagemSucesso').delay(5000).fadeOut('slow');
		});
	</script>

</body>
</html>