<%@ page import="manutencao.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="usuario.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${usuarioInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="usuario.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${usuarioInstance?.name}"/>

</div>

