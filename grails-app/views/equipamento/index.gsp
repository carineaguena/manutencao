
<%@ page import="manutencao.Equipamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipamento.label', default: 'Equipamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul class="nav nav-tabs nav-justified" style="padding-left:15px">
				<li role="presentation" class="active"><a class="home" href="${createLink(uri: '/')}"><span class="icon icon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><span class="icon icon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-equipamento" class="content scaffold-list" role="main" style="padding-left:15px">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-condensed">
			<thead>
					<tr>
					
						<g:sortableColumn property="patrimonio" title="${message(code: 'equipamento.patrimonio.label', default: 'Patrimonio')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'equipamento.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'equipamento.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="local" title="${message(code: 'equipamento.local.label', default: 'Local')}" />
					
						<th><g:message code="equipamento.servidor.label" default="Servidor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${equipamentoInstanceList}" status="i" var="equipamentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${equipamentoInstance.id}">${fieldValue(bean: equipamentoInstance, field: "patrimonio")}</g:link></td>
					
						<td>${fieldValue(bean: equipamentoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: equipamentoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: equipamentoInstance, field: "local")}</td>
					
						<td>${fieldValue(bean: equipamentoInstance, field: "servidor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${equipamentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
