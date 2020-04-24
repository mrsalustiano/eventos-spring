<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/admin/" var="home"></spring:url>
	<header>
		<div class="container mt-5">
			<nav
				class="navbar navbar-expand-md navbar-dark fixed-top purple-gradient">
				<!-- Navbar brand -->
				<a class="navbar-brand" href="#">Área Administrativa</a>
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
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pesquisas</a>
							<div class="dropdown-menu dropdown-primary"
								aria-labelledby="navbarDropdownMenuLink">
								<a 	class="dropdown-item disabled" href="#">Espetáculo</a> <a
									class="dropdown-item disabled" href="#">Perfil de Usuario</a> <a
									class="dropdown-item disabled" href="#">Usuario</a> <a
									class="dropdown-item disabled" href="#">Casa de Show</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Manutenção</a>
							<div class="dropdown-menu dropdown-primary"
								aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item disabled" href="#">Espetáculo</a> <a
									class="dropdown-item " href="/admin/perfis/listar">Perfil de Usuario</a> <a
									class="dropdown-item disabled" href="#">Usuario</a> <a
									class="dropdown-item disabled" href="#">Casa de Show</a>
							</div></li>
						<!-- Dropdown -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cadastros</a>
							<div class="dropdown-menu dropdown-primary"
								aria-labelledby="navbarDropdownMenuLink">
								 <a	class="dropdown-item" href="/admin/espetaculo">Espetáculo</a> <a
									class="dropdown-item" href="/admin/perfis/cadastrar">Perfil de Usuario</a> <a
									class="dropdown-item" href="/admin/usuario">Usuario</a> <a
									class="dropdown-item" href="/admin/casas">Casa de Show</a>
							</div></li>
					</ul>
				
					<ul class="navbar-nav ml-auto nav-flex-icons">
					<li class="nav-item "><a href="/" class="nav-link active">
								<i class="fas fa-door-closed"> <small>Sair</small></i>
						</a></li>
						<li class="nav-item "><a href="#" class="nav-link active">
								<i class="fas fa-user"> <small>Usuário:
										${usuario.nome}</small></i>
						</a></li>
					</ul>
				</div>
				<!-- Collapsible content -->
			</nav>
		</div>
	</header>
