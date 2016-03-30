<%@ page import="manutencao.Endereco" %>



<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'uf', 'error')} required" style="padding-left:15px">
	<label for="uf">
		<g:message code="endereco.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uf" maxlength="64" required="" value="${enderecoInstance?.uf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cidade', 'error')} required" style="padding-left:15px">
	<label for="cidade">
		<g:message code="endereco.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" maxlength="128" required="" value="${enderecoInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cep', 'error')} required" style="padding-left:15px">
	<label for="cep">
		<g:message code="endereco.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" maxlength="64" required="" value="${enderecoInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'rua', 'error')} required" style="padding-left:15px">
	<label for="rua">
		<g:message code="endereco.rua.label" default="Rua" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rua" maxlength="128" required="" value="${enderecoInstance?.rua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'bairro', 'error')} required" style="padding-left:15px">
	<label for="bairro">
		<g:message code="endereco.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" maxlength="128" required="" value="${enderecoInstance?.bairro}"/>

</div>

