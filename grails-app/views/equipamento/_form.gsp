<%@ page import="manutencao.Equipamento" %>



<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'patrimonio', 'error')} required" style="padding-left:15px">
	<label for="patrimonio">
		<g:message code="equipamento.patrimonio.label" default="Patrimonio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="patrimonio" maxlength="128" required="" value="${equipamentoInstance?.patrimonio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'nome', 'error')} required" style="padding-left:15px">
	<label for="nome">
		<g:message code="equipamento.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${equipamentoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'descricao', 'error')} required" style="padding-left:15px">
	<label for="descricao">
		<g:message code="equipamento.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" maxlength="128" required="" value="${equipamentoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'local', 'error')} required" style="padding-left:15px">
	<label for="local">
		<g:message code="equipamento.local.label" default="Local" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="local" maxlength="128" required="" value="${equipamentoInstance?.local}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'servidor', 'error')} required" style="padding-left:15px">
	<label for="servidor">
		<g:message code="equipamento.servidor.label" default="Servidor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servidor" name="servidor.id" from="${manutencao.Servidor.list()}" optionKey="id" required="" value="${equipamentoInstance?.servidor?.id}" class="many-to-one"/>

</div>

