
<%@ page import="manutencao.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul class="nav nav-tabs nav-justified" style="padding-left:15px">
				<li role="presentation" class="active"><a class="home" href="${createLink(uri: '/')}"><span class="icon icon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><span class="icon icon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empresa" class="content scaffold-list" role="main" style="padding-left:15px">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-condensed">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'empresa.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cnpj" title="${message(code: 'empresa.cnpj.label', default: 'Cnpj')}" />
					
						<g:sortableColumn property="razao_social" title="${message(code: 'empresa.razao_social.label', default: 'Razaosocial')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'empresa.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="objeto" title="${message(code: 'empresa.objeto.label', default: 'Objeto')}" />
					
						<th><g:message code="empresa.contato.label" default="Contato" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: empresaInstance, field: "cnpj")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "razao_social")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "objeto")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "contato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empresaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
