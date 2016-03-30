
<%@ page import="manutencao.Endereco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'endereco.label', default: 'Endereco')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul class="nav nav-tabs nav-justified" style="padding-left:15px">
				<li role="presentation" class="active"><a class="home" href="${createLink(uri: '/')}"><span class="icon icon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><span class="icon icon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-endereco" class="content scaffold-list" role="main" style="padding-left:15px">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-condensed">
			<thead>
					<tr>
					
						<g:sortableColumn property="uf" title="${message(code: 'endereco.uf.label', default: 'Uf')}" />
					
						<g:sortableColumn property="cidade" title="${message(code: 'endereco.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="cep" title="${message(code: 'endereco.cep.label', default: 'Cep')}" />
					
						<g:sortableColumn property="rua" title="${message(code: 'endereco.rua.label', default: 'Rua')}" />
					
						<g:sortableColumn property="bairro" title="${message(code: 'endereco.bairro.label', default: 'Bairro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${enderecoInstanceList}" status="i" var="enderecoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${enderecoInstance.id}">${fieldValue(bean: enderecoInstance, field: "uf")}</g:link></td>
					
						<td>${fieldValue(bean: enderecoInstance, field: "cidade")}</td>
					
						<td>${fieldValue(bean: enderecoInstance, field: "cep")}</td>
					
						<td>${fieldValue(bean: enderecoInstance, field: "rua")}</td>
					
						<td>${fieldValue(bean: enderecoInstance, field: "bairro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${enderecoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
