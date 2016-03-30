
<%@ page import="manutencao.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
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
		<div id="show-empresa" class="content scaffold-show" role="main" style="padding-left:15px">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empresa">
			
				<g:if test="${empresaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="empresa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${empresaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.cnpj}">
				<li class="fieldcontain">
					<span id="cnpj-label" class="property-label"><g:message code="empresa.cnpj.label" default="Cnpj" /></span>
					
						<span class="property-value" aria-labelledby="cnpj-label"><g:fieldValue bean="${empresaInstance}" field="cnpj"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.razao_social}">
				<li class="fieldcontain">
					<span id="razao_social-label" class="property-label"><g:message code="empresa.razao_social.label" default="Razaosocial" /></span>
					
						<span class="property-value" aria-labelledby="razao_social-label"><g:fieldValue bean="${empresaInstance}" field="razao_social"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empresa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empresaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.objeto}">
				<li class="fieldcontain">
					<span id="objeto-label" class="property-label"><g:message code="empresa.objeto.label" default="Objeto" /></span>
					
						<span class="property-value" aria-labelledby="objeto-label"><g:fieldValue bean="${empresaInstance}" field="objeto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.contato}">
				<li class="fieldcontain">
					<span id="contato-label" class="property-label"><g:message code="empresa.contato.label" default="Contato" /></span>
					
						<span class="property-value" aria-labelledby="contato-label"><g:link controller="contato" action="show" id="${empresaInstance?.contato?.id}">${empresaInstance?.contato?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="empresa.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${empresaInstance?.endereco?.id}">${empresaInstance?.endereco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.vigencia_contrato}">
				<li class="fieldcontain">
					<span id="vigencia_contrato-label" class="property-label"><g:message code="empresa.vigencia_contrato.label" default="Vigenciacontrato" /></span>
					
						<span class="property-value" aria-labelledby="vigencia_contrato-label"><g:formatDate date="${empresaInstance?.vigencia_contrato}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
