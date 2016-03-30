<%@ page import="manutencao.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nome', 'error')} required" style="padding-left:15px">
	<label for="nome">
		<g:message code="empresa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${empresaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'cnpj', 'error')} required" style="padding-left:15px">
	<label for="cnpj">
		<g:message code="empresa.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" maxlength="128" required="" value="${empresaInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'razao_social', 'error')} required" style="padding-left:15px">
	<label for="razao_social">
		<g:message code="empresa.razao_social.label" default="Razaosocial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razao_social" maxlength="128" required="" value="${empresaInstance?.razao_social}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'email', 'error')} required" style="padding-left:15px">
	<label for="email">
		<g:message code="empresa.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="128" required="" value="${empresaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'objeto', 'error')} required" style="padding-left:15px">
	<label for="objeto">
		<g:message code="empresa.objeto.label" default="Objeto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="objeto" maxlength="128" required="" value="${empresaInstance?.objeto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'contato', 'error')} required" style="padding-left:15px">
	<label for="contato">
		<g:message code="empresa.contato.label" default="Contato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contato" name="contato.id" from="${manutencao.Contato.list()}" optionKey="id" required="" value="${empresaInstance?.contato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'endereco', 'error')} required" style="padding-left:15px">
	<label for="endereco">
		<g:message code="empresa.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endereco" name="endereco.id" from="${manutencao.Endereco.list()}" optionKey="id" required="" value="${empresaInstance?.endereco?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'vigencia_contrato', 'error')} required" style="padding-left:15px">
	<label for="vigencia_contrato">
		<g:message code="empresa.vigencia_contrato.label" default="Vigenciacontrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="vigencia_contrato" precision="day"  value="${empresaInstance?.vigencia_contrato}"  />

</div>

