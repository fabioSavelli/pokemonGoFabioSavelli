<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class="d-none d-lg-block">
	<nav class="navbar navbar-expand-lg my-navbar-lg fixed-top">
		<div class="col-lg-12">
		<div class="row justify-content-between">
		  	<div class="col-lg-6">
				<div class="row justify-content-between align-items-center">
					<div class="col-lg-1">
						<a class="navbar-brand" href="/" data-toggle="tooltip" data-placement="bottom" title="Torna alla home">
							<img src="../images/logo.png" alt="home" style="height: 50px;">
						</a>
					</div>
					<div class="col-lg-8 mr-4">
					  	<form class="form-inline" method="get" action="/goToProfiloAltri" onsubmit="return controllaSelezione();">
						   	<input type="hidden" id="idCercato" name="idCercato" value="0">
					    	<div class="input-group col-md-12 col-12">
					  			<input type="search" id="myInput" class="form-control font-weight-light my-border-red" placeholder="Cerca" aria-label="Cerca" onchange="return azzeraRicerca();">
					  			<div class="input-group-append">
					    			<button class="btn my-btn-pokeball" type="submit"><i class="fa fa-search"></i></button>
						  		</div>
							</div>    	
						</form>
					</div>
				</div>
			</div>
			
			<div class="col-lg-5">
			  	<div class="collapse navbar-collapse">
			    	<ul class="navbar-nav ml-auto mt-1">
			      		<li class="nav-item mr-3">
			        		<a class="btn btn-circle my-btn-pokeball my-border-red-lg" style="padding-top: 11px;" href="/" data-toggle="tooltip" data-placement="bottom" title="Novità">
			        			<i class="fa fa-bullhorn"></i>
			        		</a>
			      		</li>
			      		<li class="nav-item mr-3">
			        		<a class="btn btn-circle my-btn-pokeball my-border-red-lg" id="bottone-pokedex-lg" style="padding-left: 6px; padding-top: 6px;" href="/goToPokedex" data-toggle="tooltip" data-placement="bottom" title="Pokedex">
			        			<img src="../images/icons/pokedex-icon-red.png" style="height: 30px;" id="icona-pokedex-lg">
			        		</a>
			      		</li> 
			      		<li class="nav-item mr-5">
			        		<a class="btn btn-circle my-btn-pokeball my-border-red-lg" id="bottone-zaino-lg" style="padding-left: 8px; padding-top: 6px;" href="/" data-toggle="tooltip" data-placement="bottom" title="Strumenti">
			        			<img src="../images/icons/zaino-icon-red.png" style="height: 28px;" id="icona-zaino-lg">
			        		</a>
			      		</li>
			      		<li class="nav-item dropdown">
			        		<a class="nav-link btn my-btn-pokeball mt-1 font-weight-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          			Accedi <i class="fa fa-angle-down"></i>
			        		</a>
			        		<div class="dropdown-menu dropdown-menu-right card-body text-center " aria-labelledby="navbarDropdown" style="width: 300px;">
			          			
				          		<h4 class="font-weight-light">Login</h4>
			          									        
								<div class="dropdown-divider mt-1 mb-1"></div>
			          			
			          			<div class="mt-2 text-left">
			          				<font class="font-weight-light mb-1" size="4">E-mail:</font>
				          			<div class="input-group input-group-sm">
							  			<div class="input-group-prepend"> <span class="input-group-text" style="background-color: #ffffff; border-color: #fb2207; color: #fb2207;"><i class="fa fa-envelope-o"></i></span> </div>
							  			<input type="email" class="form-control font-weight-light my-border-red" name="emailRegistrazione" placeholder="E-mail" aria-label="e-mail" value="${email}">
									</div>
			          			</div>
			          			
			          			<div class="mt-2 text-left">
			          				<font class="font-weight-light mb-1" size="4">Password:</font>
				          			<div class="input-group input-group-sm">
							  			<div class="input-group-prepend"> <span class="input-group-text" style="background-color: #ffffff; border-color: #fb2207; color: #fb2207;"><i class="fa fa-lock"></i></span> </div>
							  			<input type="password" class="form-control font-weight-light my-border-red" name="emailRegistrazione" placeholder="Password" aria-label="password">
									</div>
			          			</div>
					          	
				          		<div class="row justify-content-end mt-4 mr-1 ml-1 mb-3">
						       		<button class="btn btn-block my-btn-red font-weight-light"> Login </button>
				          		</div>
				          		
						        <div class="dropdown-divider mt-1 mb-1"></div>
									
								<small class="font-weight-light mt-1">
									<a href="#" class="font-weight-light">non ricordo la password</a>
									<br>						        
						        	Se non sei ancora registrato? Clicca <a href="#">qui</a> 
						       	</small>
							</div>
			      		</li>
			    	</ul>
			  	</div>
		  	</div>
	  	</div>
	  	</div>
	</nav>
	<br> <br> <br>
</div>



<!-- Grafica Mobile -->
<nav class="navbar-light my-bg-red d-lg-none">
	<div class="col-12">
		<div class="row justify-content-between">
			<button class="btn btn-link text-light">
				<font size="4"><i class="fa fa-bars"></i></font>
			</button>
			<a class="navbar-brand" href="/">
				<img src="../images/logo.png" alt="home" style="height: 30px;">
			</a>
			<button class="btn btn-link text-light" data-toggle="collapse" data-target="#navbarSupportedContent">
				<font size="4"><i class="fa fa-search"></i></font>
			</button>
		</div>
	</div>
</nav>

<nav class="navbar navbar-light bg-dark d-lg-none sticky-top">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<form class="form-inline" method="get" action="/goToProfiloAltri" onsubmit="return controllaSelezione();">
			<input type="hidden" id="idCercato" name="idCercato" value="0">
			<div class="input-group input-group-sm col-12">
				<input type="search" id="myInput" class="form-control font-weight-light" placeholder="Cerca...">
				<div class="input-group-append">
					<button class="btn btn-dark border-light text-light" type="submit">
						<font size="3"><i class="fa fa-search"></i></font>
					</button>
				</div>
			</div> 
		</form>
	</div>
</nav>

<nav class="navbar-light bg-light d-lg-none sticky-top">
	<div class="col-12">
		<div class="row justify-content-between">
		    <a class="nav-link text-navbar col-3 text-center my-text-red" href="/">
		    	<font size="5"><i class="fa fa-bullhorn"></i></font>	
		    </a>
		    
		    <a class="nav-link text-navbar col-3 text-center attivo" href="/goToPokedex">
		    	<img src="../images/icons/pokedex-icon-red.png" style="height: 30px;">
		    </a>
			
			<a class="nav-link text-navbar col-3 text-center" href="/" style="border-bottom: 4px; border-bottom-color: #fb2207;">
				<img src="../images/icons/zaino-icon-red.png" style="height: 30px;">
			</a>
			
			<a class="nav-link text-navbar col-3 text-center my-text-red" href="/">
				<font size="5"><i class="fa fa-user"></i></font>
			</a>
		</div>
	</div>
</nav>


<script>
	$("#bottone-pokedex-lg").hover(
		function(){
		 	$('#icona-pokedex-lg').attr('src','../images/icons/pokedex-icon-white.png');
		},
		function(){
		 	$('#icona-pokedex-lg').attr('src','../images/icons/pokedex-icon-red.png');
		}
	);
	
	$("#bottone-zaino-lg").hover(
		function(){
		 	$('#icona-zaino-lg').attr('src','../images/icons/zaino-icon-white.png');
		},
		function(){
		 	$('#icona-zaino-lg').attr('src','../images/icons/zaino-icon-red.png');
		}
	);

	$(function () {
	  	$('[data-toggle="tooltip"]').tooltip()
	});
</script>