
<%@ page import="manutencao.Servico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servico.label', default: 'Servico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-servico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-servico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="servico.equipamento.label" default="Equipamento" /></th>
					
						<th><g:message code="servico.servidor.label" default="Servidor" /></th>
					
						<th><g:message code="servico.empresa.label" default="Empresa" /></th>
					
						<g:sortableColumn property="problema" title="${message(code: 'servico.problema.label', default: 'Problema')}" />
					
						<g:sortableColumn property="data_final" title="${message(code: 'servico.data_final.label', default: 'Datafinal')}" />
					
						<g:sortableColumn property="data_solicitacao" title="${message(code: 'servico.data_solicitacao.label', default: 'Datasolicitacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${servicoInstanceList}" status="i" var="servicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${servicoInstance.id}">${fieldValue(bean: servicoInstance, field: "equipamento")}</g:link></td>
					
						<td>${fieldValue(bean: servicoInstance, field: "servidor")}</td>
					
						<td>${fieldValue(bean: servicoInstance, field: "empresa")}</td>
					
						<td>${fieldValue(bean: servicoInstance, field: "problema")}</td>
					
						<td><g:formatDate date="${servicoInstance.data_final}" /></td>
					
						<td><g:formatDate date="${servicoInstance.data_solicitacao}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${servicoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
