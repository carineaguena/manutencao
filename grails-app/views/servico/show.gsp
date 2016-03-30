
<%@ page import="manutencao.Servico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servico.label', default: 'Servico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-servico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-servico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list servico">
			
				<g:if test="${servicoInstance?.equipamento}">
				<li class="fieldcontain">
					<span id="equipamento-label" class="property-label"><g:message code="servico.equipamento.label" default="Equipamento" /></span>
					
						<span class="property-value" aria-labelledby="equipamento-label"><g:link controller="equipamento" action="show" id="${servicoInstance?.equipamento?.id}">${servicoInstance?.equipamento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoInstance?.servidor}">
				<li class="fieldcontain">
					<span id="servidor-label" class="property-label"><g:message code="servico.servidor.label" default="Servidor" /></span>
					
						<span class="property-value" aria-labelledby="servidor-label"><g:link controller="servidor" action="show" id="${servicoInstance?.servidor?.id}">${servicoInstance?.servidor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="servico.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${servicoInstance?.empresa?.id}">${servicoInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoInstance?.problema}">
				<li class="fieldcontain">
					<span id="problema-label" class="property-label"><g:message code="servico.problema.label" default="Problema" /></span>
					
						<span class="property-value" aria-labelledby="problema-label"><g:fieldValue bean="${servicoInstance}" field="problema"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoInstance?.data_final}">
				<li class="fieldcontain">
					<span id="data_final-label" class="property-label"><g:message code="servico.data_final.label" default="Datafinal" /></span>
					
						<span class="property-value" aria-labelledby="data_final-label"><g:formatDate date="${servicoInstance?.data_final}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoInstance?.data_solicitacao}">
				<li class="fieldcontain">
					<span id="data_solicitacao-label" class="property-label"><g:message code="servico.data_solicitacao.label" default="Datasolicitacao" /></span>
					
						<span class="property-value" aria-labelledby="data_solicitacao-label"><g:formatDate date="${servicoInstance?.data_solicitacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${servicoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="servico.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${servicoInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:servicoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${servicoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
