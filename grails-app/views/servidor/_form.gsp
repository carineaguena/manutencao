<%@ page import="manutencao.Servidor" %>



<div class="fieldcontain ${hasErrors(bean: servidorInstance, field: 'siape', 'error')} required" style="padding-left:15px">
	<label for="siape">
		<g:message code="servidor.siape.label" default="Siape" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="siape" maxlength="128" required="" value="${servidorInstance?.siape}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servidorInstance, field: 'nome', 'error')} required" style="padding-left:15px">
	<label for="nome">
		<g:message code="servidor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="128" required="" value="${servidorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servidorInstance, field: 'cargo', 'error')} required" style="padding-left:15px">
	<label for="cargo">
		<g:message code="servidor.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" maxlength="128" required="" value="${servidorInstance?.cargo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servidorInstance, field: 'setor', 'error')} required" style="padding-left:15px">
	<label for="setor">
		<g:message code="servidor.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setor" maxlength="128" required="" value="${servidorInstance?.setor}"/>

</div>

