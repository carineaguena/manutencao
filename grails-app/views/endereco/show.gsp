
<%@ page import="manutencao.Endereco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'endereco.label', default: 'Endereco')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul class="nav nav-tabs nav-justified" style="padding-left:15px">
				<li role="presentation" class="active"><a class="home" href="${createLink(uri: '/')}"><span class="icon icon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><span class="icon icon-list" aria-hidden="true"></span> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><span class="icon icon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-endereco" class="content scaffold-show" role="main" style="padding-left:15px">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list endereco">
			
				<g:if test="${enderecoInstance?.uf}">
				<li class="fieldcontain">
					<span id="uf-label" class="property-label"><g:message code="endereco.uf.label" default="Uf" /></span>
					
						<span class="property-value" aria-labelledby="uf-label"><g:fieldValue bean="${enderecoInstance}" field="uf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enderecoInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="endereco.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${enderecoInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enderecoInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="endereco.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${enderecoInstance}" field="cep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enderecoInstance?.rua}">
				<li class="fieldcontain">
					<span id="rua-label" class="property-label"><g:message code="endereco.rua.label" default="Rua" /></span>
					
						<span class="property-value" aria-labelledby="rua-label"><g:fieldValue bean="${enderecoInstance}" field="rua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enderecoInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="endereco.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${enderecoInstance}" field="bairro"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:enderecoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${enderecoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
