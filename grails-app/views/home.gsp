<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sistema de Controle de Manutenção</title>
		
	</head>
	<body>
	
		<div id="page-body" role="main">
                    
                        
             <div class="nav" role="navigation">

				<ul class="nav nav-tabs nav-justified">
                                   
					<!--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.name } }">
						<li><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>
					</g:each>-->

										<!-- Para adicionar os controles na tela de navegação -->


                                 <li role="presentation" class="active" style="padding-left:15px"> <g:link controller="home"><span class="icon icon-home" aria-hidden="true"></span> Home</g:link></li>
                                 <g:if test="${session.usuario}">



                                    <g:if test="${session.usuario.name == 'Administrador'}">

                                        <li><g:link controller="empresa"><span class="icon icon-adjust" aria-hidden="true"></span> Empresa</g:link></li>
                                        <li><g:link controller="equipamento"><span class="icon icon-list" aria-hidden="true"></span> Equipamento</g:link></li>
                                       <li><g:link controller="servico"><span class="icon icon-move" aria-hidden="true"></span> Servico</g:link></li>
                                       <li><g:link controller="usuario"><span class="icon icon-user" aria-hidden="true"></span> Usuário</g:link></li>
                                        
                                        
                                   </g:if>
                                    <g:else>
                                       
                                       <li><g:link controller="servico"><span class="icon icon-move" aria-hidden="true"></span> Servico</g:link></li>
                                       <li><g:link controller="usuario"><span class="icon icon-user" aria-hidden="true"></span> Usuário</g:link></li>
                                    	
                                    </g:else>
                             	</g:if>
				



				</ul> 
				<!--Para testar se o usuário está logado no sistema-->
				<g:if test="${session.usuario}">
				<!--o que mostrar para o usuário já logado-->
                <div class="container">
                      
                            
                           <center>
                                <h2 style="color:#006400">Sistema de Registro de Produção do IFC-Camboriú - SISPROD</h2>
                                <!--<asset:image src="prod.png" alt="Grails"/>-->
                            </center>
                        
                        </div>

				</g:if>				
                <g:else>
                <!--se ele não estiver logado mostrar aqui-->
                	<div class="jumbotron">

      					<div class="container">
        					<h1>Bem-Vindo!</h1>
                            <h2 style="color:#006400">Sistema de Registro de Manutenção do IFC-Camboriú - SISMANU</h2>
        					<p>Este é o sistema de controle de manutenção do Instituto Federal Catarinense.</p>
        					<!--<asset:image src="ifc.png" alt="Grails"/>-->
        				
      					</div>
    				</div>
    			</g:else>
    
			</div>
		</div>
	</body>