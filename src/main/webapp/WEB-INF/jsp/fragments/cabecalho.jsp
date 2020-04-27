<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<spring:url value="/" var="home"></spring:url>
<header>
	<div class="container mt-5">
		<nav
			class="navbar navbar-expand-md navbar-dark fixed-top purple-gradient">
			<!-- Navbar brand -->
			<a class="navbar-brand" href="#">Eventos Qintess</a>
			<!-- Collapse button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#basicExampleNav" aria-controls="basicExampleNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Collapsible content -->
			<div class="collapse navbar-collapse" id="basicExampleNav">

				<!-- Links -->
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="${home}">Home
							<span class="sr-only">(current)</span>
					</a></li>

					<li class="nav-item active"><a class="nav-link" href="/eventos/">Eventos
					</a></li>


					<li class="nav-item active"><a class="nav-link" href="#">Agenda
					</a></li>


					<li class="nav-item active"><a class="nav-link"
						href="/cliente/">Clientes </a></li>


					<li class="nav-item active"><a class="nav-link" href="/compras/">Compras
					</a></li>


				</ul>

				<ul class="navbar-nav ml-auto nav-flex-icons">
					<li class="nav-item "><a href="/admin" class="nav-link active">
							<i class="fas fa-user-cog"> <small>Área Administrativa</small></i>
					</a></li>
					
				</ul>

			</div>
			<!-- Collapsible content -->
		</nav>
	</div>
</header>
