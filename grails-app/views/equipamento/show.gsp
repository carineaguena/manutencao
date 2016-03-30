
<%@ page import="manutencao.Equipamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipamento.label', default: 'Equipamento')}" />
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
		<div id="show-equipamento" class="content scaffold-show" role="main" style="padding-left:15px">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list equipamento">
			
				<g:if test="${equipamentoInstance?.patrimonio}">
				<li class="fieldcontain">
					<span id="patrimonio-label" class="property-label"><g:message code="equipamento.patrimonio.label" default="Patrimonio" /></span>
					
						<span class="property-value" aria-labelledby="patrimonio-label"><g:fieldValue bean="${equipamentoInstance}" field="patrimonio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipamentoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="equipamento.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${equipamentoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipamentoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="equipamento.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${equipamentoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipamentoInstance?.local}">
				<li class="fieldcontain">
					<span id="local-label" class="property-label"><g:message code="equipamento.local.label" default="Local" /></span>
					
						<span class="property-value" aria-labelledby="local-label"><g:fieldValue bean="${equipamentoInstance}" field="local"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipamentoInstance?.servidor}">
				<li class="fieldcontain">
					<span id="servidor-label" class="property-label"><g:message code="equipamento.servidor.label" default="Servidor" /></span>
					
						<span class="property-value" aria-labelledby="servidor-label"><g:link controller="servidor" action="show" id="${equipamentoInstance?.servidor?.id}">${equipamentoInstance?.servidor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:equipamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${equipamentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
