
<%@ page import="manutencao.Contato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contato.label', default: 'Contato')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul class="nav nav-tabs nav-justified" style="padding-left:15px">
				<li role="presentation" class="active"><a class="home" href="${createLink(uri: '/')}"><span class="icon icon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><span class="icon icon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contato" class="content scaffold-list" role="main" style="padding-left:15px">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-condensed">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'contato.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'contato.telefone.label', default: 'Telefone')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'contato.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contatoInstanceList}" status="i" var="contatoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contatoInstance.id}">${fieldValue(bean: contatoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: contatoInstance, field: "telefone")}</td>
					
						<td>${fieldValue(bean: contatoInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contatoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
