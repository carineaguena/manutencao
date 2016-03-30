<%@ page import="manutencao.Servico" %>



<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'equipamento', 'error')} required" style="padding-left:15px">
	<label for="equipamento">
		<g:message code="servico.equipamento.label" default="Equipamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="equipamento" name="equipamento.id" from="${manutencao.Equipamento.list()}" optionKey="id" required="" value="${servicoInstance?.equipamento?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'servidor', 'error')} required" style="padding-left:15px">
	<label for="servidor">
		<g:message code="servico.servidor.label" default="Servidor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servidor" name="servidor.id" from="${manutencao.Servidor.list()}" optionKey="id" required="" value="${servicoInstance?.servidor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'empresa', 'error')} required" style="padding-left:15px">
	<label for="empresa">
		<g:message code="servico.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${manutencao.Empresa.list()}" optionKey="id" required="" value="${servicoInstance?.empresa?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'problema', 'error')} required" style="padding-left:15px">
	<label for="problema">
		<g:message code="servico.problema.label" default="Problema" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="problema" maxlength="128" required="" value="${servicoInstance?.problema}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'data_final', 'error')} required" style="padding-left:15px">
	<label for="data_final">
		<g:message code="servico.data_final.label" default="Datafinal" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_final" precision="day"  value="${servicoInstance?.data_final}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'data_solicitacao', 'error')} required" style="padding-left:15px">
	<label for="data_solicitacao">
		<g:message code="servico.data_solicitacao.label" default="Datasolicitacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data_solicitacao" precision="day"  value="${servicoInstance?.data_solicitacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'status', 'error')} required" style="padding-left:15px">
	<label for="status">
		<g:message code="servico.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${servicoInstance?.status}"/>

</div>

