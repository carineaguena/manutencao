<%@ page import="manutencao.Contato" %>



<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'nome', 'error')} required" style="padding-left:15px">
	<label for="nome">
		<g:message code="contato.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${contatoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'telefone', 'error')} required" style="padding-left:15px">
	<label for="telefone">
		<g:message code="contato.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" maxlength="128" required="" value="${contatoInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contatoInstance, field: 'email', 'error')} required" style="padding-left:15px">
	<label for="email">
		<g:message code="contato.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="128" required="" value="${contatoInstance?.email}"/>

</div>

