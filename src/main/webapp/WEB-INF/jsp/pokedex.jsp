<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class="d-lg-block d-none">
	<div class="card ml-3 mr-3">
		<div class="card-body">
		  	<div class="row">
		    	<div class="col-3 text-center border-right">
		    		<h1 class="font-weight-light mb-3 mt-3">Pokédex</h1>
		    		
		     		<div class="input-group col-md-12 col-12 mb-3 mt-3">
						<input type="search" id="myInput" class="form-control font-weight-light my-border-red" placeholder="Cerca Pokémon..." aria-label="Cerca Pokémon..." onchange="return azzeraRicerca();">
						<div class="input-group-append">
							<button class="btn my-btn-pokeball" type="submit"><i class="fa fa-search"></i></button>
				  		</div>
					</div>    	
		      		
		      		<div id="list-gen" class="list-group">
				        <a class="list-group-item list-group-item-action font-weight-light active" href="#list-item-1">1° Generazione: Kanto</a>
				        <a class="list-group-item list-group-item-action font-weight-light" href="#list-item-2">2° Generazione: Johto</a>
				        <a class="list-group-item list-group-item-action font-weight-light" href="#list-item-3">3° Generazione: Hoenn</a>
		      		</div>
		    	</div>
		    	<div class="col-9">
		      		<div data-spy="scroll" data-target="#list-gen" data-offset="0" class="pokedex">
				        <br id="list-item-1">
				        <h2 class="font-weight-light ml-3 mb-3">Regione di Kanto</h2>
				        
				        <c:forEach items="${pokedex1}" var="item" step="3" varStatus="i">
		
							<div class="card-deck col-12">
								<div class="card border-dark">
									<div class="card-header">
							  			<img class="card-img-top" src="${item.immagine}" alt="Card image cap">
								  	</div>
								  	<div class="card-body">
								    	<h5 class="card-title">
								    		<a href="" class="font-weight-light" data-toggle="modal" data-target="#pokemonModal${item.id}">
								    			${item.codice} 
												<c:if test="${item.codice == '#029'}">
													- Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
												</c:if>
												<c:if test="${item.codice == '#032'}">
													- Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
												</c:if>
												<c:if test="${item.codice != '#029' && item.codice != '#032'}">
													- ${item.nome}
												</c:if>
											</a>
							    		</h5>
											
								    	<p class="card-text font-weight-light">
								    		Tipo: 
								    		<c:forEach items="${item.tipo}" var="item2">
								   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
								   			</c:forEach><br><br>
								   			Tasso cattura: ${item.statistica.tassoCattura}% <br>
								   			Tasso fuga: ${item.statistica.tassoFuga}% 
								   		</p>
							 		</div>
								    <div class="card-footer border-dark pl-5 pr-5">
								   		<div class="row justify-content-between">
								    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione">
									    		<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${item.id}" onmouseover="modificaPokeball1(${item.id});" onmouseleave="modificaPokeball1(${item.id});">
								    		</a>
								    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti">
								    			<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${item.id}" onmouseover="modificaStella1(${item.id});" onmouseleave="modificaStella1(${item.id});">
								    		</a>
								    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi">
								    			<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${item.id}" onmouseover="modificaFreccia1(${item.id});" onmouseleave="modificaFreccia1(${item.id});">
								    		</a>
							    		</div>
							   		</div>
								</div>
								
								<c:if test="${pokedex1[i.index+1] == null}">
									<div class="card border-0"></div>
								</c:if>
								<c:if test="${pokedex1[i.index+1] != null}">
									<div class="card border-dark">
										<div class="card-header">
								  			<img class="card-img-top" src="${pokedex1[i.index+1].immagine}" alt="Card image cap">
									  	</div>
									  	<div class="card-body">
									    	<h5 class="card-title">
									    		<a href="" class="font-weight-light" data-toggle="modal" data-target="#pokemonModal${pokedex1[i.index+1].id}">
									    			${pokedex1[i.index+1].codice} 
													<c:if test="${pokedex1[i.index+1].codice == '#029'}">
														- Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex1[i.index+1].codice == '#032'}">
														- Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex1[i.index+1].codice != '#029' && pokedex1[i.index+1].codice != '#032'}">
														- ${pokedex1[i.index+1].nome}
													</c:if>
												</a>
								    		</h5>
												
									    	<p class="card-text font-weight-light">
									    		Tipo: 
									    		<c:forEach items="${pokedex1[i.index+1].tipo}" var="item2">
									   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
									   			</c:forEach><br><br>
									   			Tasso cattura: ${pokedex1[i.index+1].statistica.tassoCattura}% <br>
									   			Tasso fuga: ${pokedex1[i.index+1].statistica.tassoFuga}% 
									   		</p>
								 		</div>
									    <div class="card-footer border-dark pl-5 pr-5">
									   		<div class="row justify-content-between">
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione" onclick="aggiungiCollezione(${item.id});">
										    		<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${pokedex1[i.index+1].id}" onmouseover="modificaPokeball1(${pokedex1[i.index+1].id});" onmouseleave="modificaPokeball1(${pokedex1[i.index+1].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti" onclick="aggiungiPreferiti(${item.id});">
									    			<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${pokedex1[i.index+1].id}" onmouseover="modificaStella1(${pokedex1[i.index+1].id});" onmouseleave="modificaStella1(${pokedex1[i.index+1].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi" onclick="aggiungiScambi(${item.id});">
									    			<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${pokedex1[i.index+1].id}" onmouseover="modificaFreccia1(${pokedex1[i.index+1].id});" onmouseleave="modificaFreccia1(${pokedex1[i.index+1].id});">
									    		</a>
								    		</div>
								   		</div>
									</div>
								</c:if>
				
								<c:if test="${pokedex1[i.index+2] == null}">
									<div class="card border-0"></div>
								</c:if>
								<c:if test="${pokedex1[i.index+2] != null}">
								  	<div class="card border-dark">
										<div class="card-header">
								  			<img class="card-img-top" src="${pokedex1[i.index+2].immagine}" alt="Card image cap">
									  	</div>
									  	<div class="card-body">
									    	<h5 class="card-title">
									    		<a href="" class="font-weight-light" data-toggle="modal" data-target="#pokemonModal${pokedex1[i.index+2].id}">
									    			${pokedex1[i.index+2].codice} 
													<c:if test="${pokedex1[i.index+2].codice == '#029'}">
														- Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex1[i.index+2].codice == '#032'}">
														- Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex1[i.index+2].codice != '#029' && pokedex1[i.index+2].codice != '#032'}">
														- ${pokedex1[i.index+2].nome}
													</c:if>
												</a>
								    		</h5>
												
									    	<p class="card-text font-weight-light">
									    		Tipo: 
									    		<c:forEach items="${pokedex1[i.index+2].tipo}" var="item2">
									   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
									   			</c:forEach><br><br>
									   			Tasso cattura: ${pokedex1[i.index+2].statistica.tassoCattura}% <br>
									   			Tasso fuga: ${pokedex1[i.index+2].statistica.tassoFuga}% 
									   		</p>
								 		</div>
									    <div class="card-footer border-dark pl-5 pr-5">
									   		<div class="row justify-content-between">
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione" onclick="aggiungiCollezione(${item.id});">
										    		<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${pokedex1[i.index+2].id}" onmouseover="modificaPokeball1(${pokedex1[i.index+2].id});" onmouseleave="modificaPokeball1(${pokedex1[i.index+2].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti" onclick="aggiungiPreferiti(${item.id});">
									    			<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${pokedex1[i.index+2].id}" onmouseover="modificaStella1(${pokedex1[i.index+2].id});" onmouseleave="modificaStella1(${pokedex1[i.index+2].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi" onclick="aggiungiScambi(${item.id});">
									    			<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${pokedex1[i.index+2].id}" onmouseover="modificaFreccia1(${pokedex1[i.index+2].id});" onmouseleave="modificaFreccia1(${pokedex1[i.index+2].id});">
									    		</a>
								    		</div>
								   		</div>
									</div>
								</c:if>
							</div>
							<br>
						</c:forEach>
				        
				        
				        <hr id="list-item-2"><br>
				        <h2 class="font-weight-light ml-3 mb-3">Regione di Johto</h2>
				        
				        <c:forEach items="${pokedex2}" var="item" step="3" varStatus="i">
							<div class="card-deck col-12">
								<div class="card">
									<div class="card-header">
							  			<img class="card-img-top" src="${item.immagine}" alt="Card image cap">
								  	</div>
								  	<div class="card-body">
								    	<h5 class="card-title">
								    		<a href="#" class="font-weight-light">
								    			${item.codice} 
												<c:if test="${item.codice == '#029'}">
													- Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
												</c:if>
												<c:if test="${item.codice == '#032'}">
													- Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
												</c:if>
												<c:if test="${item.codice != '#029' && item.codice != '#032'}">
													- ${item.nome}
												</c:if>
							    			</a>
							    		</h5>
								    	<p class="card-text font-weight-light">
								    		Tipo: 
								    		<c:forEach items="${item.tipo}" var="item2">
								   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
								   			</c:forEach><br><br>
								   			Tasso cattura: ${item.statistica.tassoCattura}% <br>
								   			Tasso fuga: ${item.statistica.tassoFuga}% 
								   		</p>
							 		</div>
								    <div class="card-footer text-muted pl-5 pr-5">
								   		<div class="row justify-content-between">
								    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione" onclick="aggiungiCollezione(${item.id});">
									    		<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${item.id}" onmouseover="modificaPokeball1(${item.id});" onmouseleave="modificaPokeball2(${item.id});">
								    		</a>
								    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti" onclick="aggiungiPreferiti(${item.id});">
								    			<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${item.id}" onmouseover="modificaStella1(${item.id});" onmouseleave="modificaStella2(${item.id});">
								    		</a>
								    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi" onclick="aggiungiScambi(${item.id});">
								    			<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${item.id}" onmouseover="modificaFreccia1(${item.id});" onmouseleave="modificaFreccia2(${item.id});">
								    		</a>
							    		</div>
							   		</div>
								</div>
		
								<c:if test="${pokedex2[i.index+1] == null}">
									<div class="card border-0"></div>
								</c:if>
								<c:if test="${pokedex2[i.index+1] != null}">
									<div class="card">
										<div class="card-header">
								  			<img class="card-img-top" src="${pokedex2[i.index+1].immagine}" alt="Card image cap">
									  	</div>
									  	<div class="card-body">
									    	<h5 class="card-title">
									    		<a href="#" class="font-weight-light">
									    			${pokedex2[i.index+1].codice} 
													<c:if test="${pokedex2[i.index+1].codice == '#029'}">
														- Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex2[i.index+1].codice == '#032'}">
														- Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex2[i.index+1].codice != '#029' && pokedex2[i.index+1].codice != '#032'}">
														- ${pokedex2[i.index+1].nome}
													</c:if>
								    			</a>
								    		</h5>
									    	<p class="card-text font-weight-light">
									    		Tipo: 
									    		<c:forEach items="${pokedex2[i.index+1].tipo}" var="item2">
									   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
									   			</c:forEach><br><br>
									   			Tasso cattura: ${pokedex2[i.index+1].statistica.tassoCattura}% <br>
									   			Tasso fuga: ${pokedex2[i.index+1].statistica.tassoFuga}% 
									   		</p>
								 		</div>
									    <div class="card-footer text-muted pl-5 pr-5">
									   		<div class="row justify-content-between">
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione">
										    		<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${pokedex2[i.index+1].id}" onmouseover="modificaPokeball1(${pokedex2[i.index+1].id});" onmouseleave="modificaPokeball2(${pokedex2[i.index+1].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti">
									    			<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${pokedex2[i.index+1].id}" onmouseover="modificaStella1(${pokedex2[i.index+1].id});" onmouseleave="modificaStella2(${pokedex2[i.index+1].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi">
									    			<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${pokedex2[i.index+1].id}" onmouseover="modificaFreccia1(${pokedex2[i.index+1].id});" onmouseleave="modificaFreccia2(${pokedex2[i.index+1].id});">
									    		</a>
								    		</div>
								   		</div>
									</div>
								</c:if>
				
								<c:if test="${pokedex2[i.index+2] == null}">
									<div class="card border-0"></div>
								</c:if>
								<c:if test="${pokedex2[i.index+2] != null}">
								  	<div class="card">
										<div class="card-header">
								  			<img class="card-img-top" src="${pokedex2[i.index+2].immagine}" alt="Card image cap">
									  	</div>
									  	<div class="card-body">
									    	<h5 class="card-title">
									    		<a href="#" class="font-weight-light">
									    			${pokedex2[i.index+2].codice} 
													<c:if test="${pokedex2[i.index+2].codice == '#029'}">
														- Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex2[i.index+2].codice == '#032'}">
														- Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
													</c:if>
													<c:if test="${pokedex2[i.index+2].codice != '#029' && pokedex2[i.index+2].codice != '#032'}">
														- ${pokedex2[i.index+2].nome}
													</c:if>
								    			</a>
								    		</h5>
									    	<p class="card-text font-weight-light">
									    		Tipo: 
									    		<c:forEach items="${pokedex2[i.index+2].tipo}" var="item2">
									   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
									   			</c:forEach><br><br>
									   			Tasso cattura: ${pokedex2[i.index+2].statistica.tassoCattura}% <br>
									   			Tasso fuga: ${pokedex2[i.index+2].statistica.tassoFuga}% 
									   		</p>
								 		</div>
									    <div class="card-footer text-muted pl-5 pr-5">
									   		<div class="row justify-content-between">
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione">
									    		</a>
										    		<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${pokedex2[i.index+2].id}" onmouseover="modificaPokeball1(${pokedex2[i.index+2].id});" onmouseleave="modificaPokeball2(${pokedex2[i.index+2].id});">
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti">
									    			<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${pokedex2[i.index+2].id}" onmouseover="modificaStella1(${pokedex2[i.index+2].id});" onmouseleave="modificaStella2(${pokedex2[i.index+2].id});">
									    		</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi">
									    			<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${pokedex2[i.index+2].id}" onmouseover="modificaFreccia1(${pokedex2[i.index+2].id});" onmouseleave="modificaFreccia2(${pokedex2[i.index+2].id});">
									    		</a>
								    		</div>
								   		</div>
									</div>
								</c:if>
							</div>
							<br>
						</c:forEach>
				        
				        
				        <hr id="list-item-3">
				        <h2 class="font-weight-light ml-3 mb-3">Regione di Hoenn</h2>
				        
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>           
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
						<p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		       		
		       			<br>
		       			<hr id="list-item-4"><br>
				        <h2 class="font-weight-light">Forme di Alola</h2><br>
		       			Forme di Alola
		       		</div>
		    	</div>
		  	</div>
		</div>
	</div>
</div>


<!-- grafica mobile -->
<div class="d-block d-lg-none mt-2 text-center">
<!-- 	<h2 class="font-weight-light mb-1">Pokédex</h2> -->
	<div class="nav col-12 text-center sticky-top" id="pokedex-sm" role="tablist">
		<a class="nav-item nav-link active col-4" id="nav-kanto-tab" href="#kanto" style="text-align: center;"> 
			<small class="my-text-red font-weight-light">Kanto</small>
		</a> 
		<a class="nav-item nav-link col-4" id="nav-johto-tab" href="#johto" style="text-align: center;"> 
			<small class="my-text-red font-weight-light">Johto</small>
		</a> 
		<a class="nav-item nav-link col-4" id="nav-hoenn-tab" href="#hoenn" style="text-align: center;">
			<small class="my-text-red font-weight-light">Hoenn</small>
		</a>
	</div>
	<div data-spy="scroll" data-target="#pokedex-sm" data-offset="0" class="pokedex-sm">
		<p id="kanto"></p>
	    <h2 class="font-weight-light mb-3">Kanto</h2>
		     <c:forEach items="${pokedex1}" var="item" varStatus="i">
				<div class="card border-dark ml-3 mr-3">
					<div class="card-header" onclick="mostraModal(${item.id});">
						<img class="card-img-top bg-light" src="${item.immagine}" alt="Card image cap">
					</div>
					<div class="text-left ml-3 mt-3 mb-3" onclick="mostraModal(${item.id});">
						<h5 class="card-title">
							<a href="" class="font-weight-light" data-toggle="modal" data-target="#pokemonModal${item.id}">
						    	${item.codice} 
								<c:if test="${item.codice == '#029'}">
									 - Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
								</c:if>
								<c:if test="${item.codice == '#032'}">
									 - Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
								</c:if>
								<c:if test="${item.codice != '#029' && item.codice != '#032'}">
									 - ${item.nome}
								</c:if>
							</a>
					    </h5>
						<p class="card-text font-weight-light">
							Tipo: 
						    <c:forEach items="${item.tipo}" var="item2">
						   		<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
						   	</c:forEach>
						</p>
					</div>
					<div class="card-footer border-dark pl-5 pr-5">
						<div class="row justify-content-between">
							<a href="#" onclick="aggiungiCollezione(${item.id});">
								<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${item.id}-sm">
						   	</a>
						    <a href="#" onclick="aggiungiPreferiti(${item.id});">
						    	<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${item.id}-sm">
						   	</a>
						    <a href="#" onclick="aggiungiScambi(${item.id});">
						    	<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${item.id}-sm">
						    </a>
					    </div>
					</div>
				</div>
				<br>
		     </c:forEach>    
    
		<hr id="johto">
		<h2 class="font-weight-light mb-3">Johto</h2>
		        
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>           
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				<p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
       		
	
		<hr id="hoenn">
		<h2 class="font-weight-light mb-3">Hoenn</h2>
		        
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>           
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
		        <p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
				<p>Quis anim sit do amet fugiat dolor velit sit ea ea do reprehenderit culpa duis. Nostrud aliqua ipsum fugiat minim proident occaecat excepteur aliquip culpa aute tempor reprehenderit. Deserunt tempor mollit elit ex pariatur dolore velit fugiat mollit culpa irure ullamco est ex ullamco excepteur.</p>
       		
	</div>
</div>



<!-- Modal pokemon -->
<c:forEach items="${pokedex1}" var="item" varStatus="i">
	<div class="modal fade bd-example-modal-lg" id="pokemonModal${item.id}" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header" style="height: 10vh;">
					<div class="d-none d-lg-block">
						<h3 class="modal-title font-weight-light" id="exampleModalLabel">
							${item.codice} 
							<c:if test="${item.codice == '#029'}">
								 - Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
							</c:if>
							<c:if test="${item.codice == '#032'}">
								 - Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
							</c:if>
							<c:if test="${item.codice != '#029' && item.codice != '#032'}">
								 - ${item.nome}
							</c:if>
						</h3>
					</div>
					<div class="d-lg-none d-block">
						<h5 class="modal-title font-weight-light" id="exampleModalLabel">
							${item.codice} 
							<c:if test="${item.codice == '#029'}">
								 - Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
							</c:if>
							<c:if test="${item.codice == '#032'}">
								 - Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
							</c:if>
							<c:if test="${item.codice != '#029' && item.codice != '#032'}">
								 - ${item.nome}
							</c:if>
						</h5>
					</div>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				
				<div class="modal-body pokemonModalBody">
					<div class="row">
						<div class="col-lg-5 text-center">
							<br>
							<img class="col-lg-12" src="${item.immagine}">
						    <br><br>
						    <div class="col-lg-10 offset-lg-1 col-10 offset-1 mb-3">
						    	<div class="row justify-content-between">
									<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione" onclick="aggiungiCollezione(${item.id});">
										<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${item.id}b" onmouseover="modificaPokeball2(${item.id});" onmouseleave="modificaPokeball2(${item.id});">
									</a>
									<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti" onclick="aggiungiPreferiti(${item.id});">
										<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${item.id}b" onmouseover="modificaStella2(${item.id});" onmouseleave="modificaStella2(${item.id});">
									</a>
									<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi" onclick="aggiungiScambi(${item.id});">
										<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${item.id}b" onmouseover="modificaFreccia2(${item.id});" onmouseleave="modificaFreccia2(${item.id});">
									</a>
								</div>
							</div>
							<div class="d-lg-none d-block"><hr></div>
		    			</div>
						<div class="col-lg-7">
							<div class="row">
						    	<div class="col-lg-6">
									<h5 class="font-weight-light">
								    	Tipo: <br> 
								    	<c:forEach items="${item.tipo}" var="item2">
								   			<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
								   		</c:forEach><br>
						        	</h5>
						        </div>
						        <div class="col-lg-6">
									<h5 class="font-weight-light">
								    	Debolezze: <br>
								        <c:forEach items="${item.debolezze}" var="item2">
								   			<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item2.colore}; color: #ffffff;">${item2.descrizione}</small>
								   		</c:forEach><br>
									</h5>
								</div>
							</div>
						    <br>
						    <div class="card text-white bg-info mb-3">
								<div class="card-header">
									<h5 class="font-weight-light">Statistiche</h5>
								</div>
								<div class="card-body">
									<h6 class="font-weight-light">Distanza: <font class="text-dark">${item.distanza} Km</font> </h6>
									<div class="d-lg-none d-block">
										<table class="font-weight-light col-12">
											<tr class="mt-2">
												<th class="font-weight-light">PL massimi: </th>
												<th class="font-weight-light text-dark">${item.statistica.plMassimi}</th>
											</tr>
											<tr class="mt-2">
												<th class="font-weight-light">PS: </th>
												<th class="font-weight-light text-dark">${item.statistica.ps}</th>
											</tr>
											<tr class="mt-2">
												<th class="font-weight-light">Attacco: </th>
												<th class="font-weight-light text-dark">${item.statistica.attacco}</th>
											</tr>
											<tr class="mt-2">
												<th class="font-weight-light">Difesa: </th>
												<th class="font-weight-light text-dark">${item.statistica.difesa}</th>
											</tr>
											<tr class="mt-2">
												<th class="font-weight-light">Tasso cattura: </th>
												<th class="font-weight-light text-dark">${item.statistica.tassoCattura}%</th>
											</tr>
											<tr class="mt-2">
												<th class="font-weight-light">Tasso fuga: </th>
												<th class="font-weight-light text-dark">${item.statistica.tassoFuga}%</th>
											</tr>
										</table>
									</div>
									<div class="d-none d-lg-block">
										<table class="font-weight-light col-12">
											<tr>
												<th class="font-weight-light">PL massimi: </th>
												<th class="font-weight-light text-dark">${item.statistica.plMassimi}</th>
												<th class="font-weight-light">PS: </th>
												<th class="font-weight-light text-dark">${item.statistica.ps}</th>
											</tr>
											<tr>
												<th class="font-weight-light">Attacco: </th>
												<th class="font-weight-light text-dark">${item.statistica.attacco}</th>
												<th class="font-weight-light">Difesa: </th>
												<th class="font-weight-light text-dark">${item.statistica.difesa}</th>
											</tr>
											<tr>
												<th class="font-weight-light">Tasso cattura: </th>
												<th class="font-weight-light text-dark">${item.statistica.tassoCattura}%</th>
												<th class="font-weight-light">Tasso fuga: </th>
												<th class="font-weight-light text-dark">${item.statistica.tassoFuga}%</th>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card text-white mt-3 mb-3">
						<div class="card-header bg-dark">
							<h5 class="font-weight-light">Evoluzioni</h5>
						</div>
						<div class="card-body bg-secondary text-center">
							<c:forEach items="${item.evoluzioni}" var="item2" varStatus="k">
								<div class="row justify-content-center align-items-center">
									<c:forEach items="${item2}" var="item3" varStatus="j">
										<div class="text-center col-lg-3"> 
											<img class="rounded-circle bg-dark" style="width: 75%" src="${item3.immagine}"><br><br>
											<h6 class="font-weight-light">${item3.codice} - ${item3.nome}</h6> 
											<c:forEach items="${item3.tipo}" var="item4">
								   				<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item4.colore}; color: #ffffff;">${item4.descrizione}</small>
								   			</c:forEach>
										</div>
										
										<c:if test="${item2[j.index+1]!=null}">
											<div class="text-center"> 
												<div class="d-lg-block d-none">
													<h4 class="text-dark font-weight-light">
														<img src="../images/icons/freccia.png" style="height: 30px;"><br>
														${item2[j.index+1].caramelleNecessarie} <img src="../images/strumenti/caramella-rara.png" style="width: 22px;">
													</h4>
												</div>
												<div class="d-block d-lg-none">
													<h4 class="text-dark font-weight-light mt-2">
														<i class="fa fa-angle-double-down"></i><br>
														${item2[j.index+1].caramelleNecessarie} <img src="../images/strumenti/caramella-rara.png" style="width: 22px;">
														<br><i class="fa fa-angle-double-down"></i><br>
													</h4>
												</div>
											</div>
										</c:if>
									</c:forEach>
									<br>
								</div>
								
								<div class="d-block d-lg-none">
									<c:if test="${item.evoluzioni[k.index+1]!=null}">
										<br><hr><br>
									</c:if>
								</div>
							</c:forEach>
						</div>
					</div>	
					<c:if test="${item.alola != null}">
						<div class="card text-white mt-3 mb-3">
							<div class="card-header bg-warning">
								<h5 class="font-weight-light">Forma di Alola</h5>
							</div>
							<div class="card-body bg-light">
								<h4 class="font-weight-light text-dark col-lg-12 text-center">${item.codice} - ${item.alola.nome} di Alola</h4>
								<div class="row mt-2">
									<div class="col-lg-5">
										<img class="col-lg-12 " src="${item.alola.immagine}"><br><br>
										<div class="col-lg-10 offset-lg-1 mb-3">
									    	<div class="row justify-content-between">
												<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua collezione">
													<img src="../images/icons/pokeball-icon-o.png" style="height: 20px;" id="icona-pokeball-lg-${item.alola.id}c" onmouseover="modificaPokeball3(${item.alola.id});" onmouseleave="modificaPokeball3(${item.alola.id});">
												</a>
												<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo ai tuoi preferiti">
													<img src="../images/icons/stella-icon-o.png" style="height: 20px;" id="icona-stella-lg-${item.alola.id}c" onmouseover="modificaStella3(${item.alola.id});" onmouseleave="modificaStella3(${item.alola.id});">
												</a>
									    		<a href="#" data-toggle="tooltip" data-placement="top" title="Aggiungilo alla tua lista scambi">
													<img src="../images/icons/freccia-icon-o.png" style="height: 20px;" id="icona-freccia-lg-${item.alola.id}c" onmouseover="modificaFreccia3(${item.alola.id});" onmouseleave="modificaFreccia3(${item.alola.id});">
												</a>
											</div>
											<div class="d-block d-lg-none">
												<hr>
											</div>
										</div>
									</div>
									<div class="col-lg-7 text-start text-dark">
										<div class="row">
									    	<div class="col-lg-6">
												<h5 class="font-weight-light">
											    	Tipo: <br> 
										    		<c:forEach items="${item.alola.tipo}" var="item4">
														<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item4.colore}; color: #ffffff;">${item4.descrizione}</small>
													</c:forEach><br>
									        	</h5>
									        </div>
									        <div class="col-lg-6">
												<h5 class="font-weight-light">
											    	Debolezze: <br> 
													<c:forEach items="${item.alola.debolezze}" var="item4">
														<small class="pl-1 pr-1 ml-1 text-center font-weight-light" style="background-color: ${item4.colore}; color: #ffffff;">${item4.descrizione}</small>
													</c:forEach><br>
												</h5>
											</div>
										</div><br>
															
										<div class="card text-white bg-info mb-3">
											<div class="card-header">
												<h5 class="font-weight-light">Statistiche</h5>
											</div>
											<div class="card-body">
												<h6 class="font-weight-light">Distanza: <font class="text-dark">${item.distanza} Km</font> </h6>
												<div class="d-lg-block d-none">
													<table class="font-weight-light col-12">
														<tr>
															<th class="font-weight-light">PL massimi: </th>
															<th class="font-weight-light text-dark">${item.statistica.plMassimi}</th>
															<th class="font-weight-light">PS: </th>
															<th class="font-weight-light text-dark">${item.statistica.ps}</th>
														</tr>
														<tr>
															<th class="font-weight-light">Attacco: </th>
															<th class="font-weight-light text-dark">${item.statistica.attacco}</th>
															<th class="font-weight-light">Difesa: </th>
															<th class="font-weight-light text-dark">${item.statistica.difesa}</th>
														</tr>
														<tr>
															<th class="font-weight-light">Tasso cattura: </th>
															<th class="font-weight-light text-dark">${item.statistica.tassoCattura}%</th>
															<th class="font-weight-light">Tasso fuga: </th>
															<th class="font-weight-light text-dark">${item.statistica.tassoFuga}%</th>
														</tr>
													</table>
												</div>
												<div class="d-block d-lg-none">
													<table class="font-weight-light col-12">
														<tr>
															<th class="font-weight-light">PL massimi: </th>
															<th class="font-weight-light text-dark">${item.statistica.plMassimi}</th>
														</tr>
														<tr>
															<th class="font-weight-light">PS: </th>
															<th class="font-weight-light text-dark">${item.statistica.ps}</th>
														</tr>
														<tr>
															<th class="font-weight-light">Attacco: </th>
															<th class="font-weight-light text-dark">${item.statistica.attacco}</th>
														</tr>
														<tr>
															<th class="font-weight-light">Difesa: </th>
															<th class="font-weight-light text-dark">${item.statistica.difesa}</th>
														</tr>
														<tr>
															<th class="font-weight-light">Tasso cattura: </th>
															<th class="font-weight-light text-dark">${item.statistica.tassoCattura}%</th>
														</tr>
														<tr>
															<th class="font-weight-light">Tasso fuga: </th>
															<th class="font-weight-light text-dark">${item.statistica.tassoFuga}%</th>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</div>
							    	
							    	
				<div class="modal-footer justify-content-between" style="height: 8vh;">
					<c:if test="${pokedex1[i.index-1] == null}"><a></a></c:if>
					<c:if test="${pokedex1[i.index-1] != null}">
						<div class="d-block d-lg-none">
							<a href="" class="font-weight-light" onclick="return mostraENascondiModal(${pokedex1[i.index-1].id}, ${pokedex1[i.index].id});">
								<i class="fa fa-arrow-left"></i> ${pokedex1[i.index-1].codice}
							</a>
						</div>
						<div class="d-lg-block d-none">
							<a href="" class="font-weight-light" onclick="return mostraENascondiModal(${pokedex1[i.index-1].id}, ${pokedex1[i.index].id});">
								<i class="fa fa-arrow-left"></i> ${pokedex1[i.index-1].codice} 
								<c:if test="${pokedex1[i.index-1].codice == '#029'}">
									 - Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
								</c:if>
								<c:if test="${pokedex1[i.index-1].codice == '#032'}">
									 - Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
								</c:if>
								<c:if test="${pokedex1[i.index-1].codice != '#029' && pokedex1[i.index-1].codice != '#032'}"> 
									 - ${pokedex1[i.index-1].nome}
								</c:if>
							</a>
						</div>
					</c:if>
					<c:if test="${pokedex1[i.index+1] == null}"><a></a></c:if>
					<c:if test="${pokedex1[i.index+1] != null}">
						<div class="d-block d-lg-none">
							<a href="" class="font-weight-light" onclick="return mostraENascondiModal(${pokedex1[i.index+1].id}, ${pokedex1[i.index].id});">
								${pokedex1[i.index+1].codice} <i class="fa fa-arrow-right"></i>
							</a>
						</div>
						<div class="d-lg-block d-none">
							<a href="" class="font-weight-light" onclick="return mostraENascondiModal(${pokedex1[i.index+1].id}, ${pokedex1[i.index].id});">
								${pokedex1[i.index+1].codice}
								<c:if test="${pokedex1[i.index+1].codice == '#029'}">
									 - Nidoran <img src="../images/pokemon/altro/femmina-link.png" style="height: 20px;">
								</c:if>
								<c:if test="${pokedex1[i.index+1].codice == '#032'}">
									 - Nidoran <img src="../images/pokemon/altro/maschio-link.png" style="height: 20px;">
								</c:if>
								<c:if test="${pokedex1[i.index+1].codice != '#029' && pokedex1[i.index+1].codice != '#032'}">
									 - ${pokedex1[i.index+1].nome}
								</c:if> <i class="fa fa-arrow-right"></i>
							</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
<script>
	function modificaPokeball1(index){
		if($("#icona-pokeball-lg-"+index).attr('src') == "../images/icons/pokeball-icon.png")
			$("#icona-pokeball-lg-"+index).attr('src','../images/icons/pokeball-icon-o.png');
		else
			$("#icona-pokeball-lg-"+index).attr('src','../images/icons/pokeball-icon.png');
	}
	function modificaPokeball2(index){
		if($("#icona-pokeball-lg-"+index+"b").attr('src') == "../images/icons/pokeball-icon.png")
			$("#icona-pokeball-lg-"+index+"b").attr('src','../images/icons/pokeball-icon-o.png');
		else
			$("#icona-pokeball-lg-"+index+"b").attr('src','../images/icons/pokeball-icon.png');
	}
	function modificaPokeball3(index){
		if($("#icona-pokeball-lg-"+index+"c").attr('src') == "../images/icons/pokeball-icon.png")
			$("#icona-pokeball-lg-"+index+"c").attr('src','../images/icons/pokeball-icon-o.png');
		else
			$("#icona-pokeball-lg-"+index+"c").attr('src','../images/icons/pokeball-icon.png');
	}

	function modificaStella1(index){
		if($("#icona-stella-lg-"+index).attr('src') == "../images/icons/stella-icon.png")
			$("#icona-stella-lg-"+index).attr('src','../images/icons/stella-icon-o.png');
		else
			$("#icona-stella-lg-"+index).attr('src','../images/icons/stella-icon.png');
	}
	function modificaStella2(index){
		if($("#icona-stella-lg-"+index+"b").attr('src') == "../images/icons/stella-icon.png")
			$("#icona-stella-lg-"+index+"b").attr('src','../images/icons/stella-icon-o.png');
		else
			$("#icona-stella-lg-"+index+"b").attr('src','../images/icons/stella-icon.png');
	}
	function modificaStella3(index){
		if($("#icona-stella-lg-"+index+"c").attr('src') == "../images/icons/stella-icon.png")
			$("#icona-stella-lg-"+index+"c").attr('src','../images/icons/stella-icon-o.png');
		else
			$("#icona-stella-lg-"+index+"c").attr('src','../images/icons/stella-icon.png');
	}
	
	function modificaFreccia1(index){
		if($("#icona-freccia-lg-"+index).attr('src') == "../images/icons/freccia-icon.png")
			$("#icona-freccia-lg-"+index).attr('src','../images/icons/freccia-icon-o.png');
		else
			$("#icona-freccia-lg-"+index).attr('src','../images/icons/freccia-icon.png');
	}
	function modificaFreccia2(index){
		if($("#icona-freccia-lg-"+index+"b").attr('src') == "../images/icons/freccia-icon.png")
			$("#icona-freccia-lg-"+index+"b").attr('src','../images/icons/freccia-icon-o.png');
		else
			$("#icona-freccia-lg-"+index+"b").attr('src','../images/icons/freccia-icon.png');
	}
	function modificaFreccia3(index){
		if($("#icona-freccia-lg-"+index+"c").attr('src') == "../images/icons/freccia-icon.png")
			$("#icona-freccia-lg-"+index+"c").attr('src','../images/icons/freccia-icon-o.png');
		else
			$("#icona-freccia-lg-"+index+"c").attr('src','../images/icons/freccia-icon.png');
	}
	
	function mostraENascondiModal(mostra, nascondi){
		$("#pokemonModal"+nascondi).modal('hide');
		$("#pokemonModal"+mostra).modal('show');
		return false;
	}
	
	function mostraModal(mostra){
		$("#pokemonModal"+mostra).modal('show');
		return false;
	}
	
	function aggiungiCollezione(id){
		return false;
	}
	
	function aggiungiPreferiti(id){
		return false;
	}
	
	function aggiungiScambi(id){
		return false;
	}
	

</script>