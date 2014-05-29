<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
	<head>
	    <link href="<s:url value='/css/main.css'/>" rel="stylesheet" type="text/css"/>
	    <title><s:text name="label.languagedesigner.subject"/></title>
	</head>
	<body>
		<s:form action="searchClient" method="GET">
			<div class="titleDiv"><s:text name="application.idCliente.title"/></div>
			<h1><s:text name="label.idCliente.subject"/></h1>
			<br>
			<table class="borderAll">
				<tr>			      
			        <td><s:textfield name="dni" label="%{getText('label.dni')}"/></td>
			        <th><s:submit value="%{getText('label.button')}" align="right"/></th>
			    </tr>
			</table>
			<br>
			<s:actionerror />
		</s:form>
			
		<s:text name="%{getText('label.string.dni')}"></s:text>
		<s:text name="%{cliente.dni}"></s:text>
		<s:text name="%{getText('label.string.nombre')}"></s:text>
		<s:text name="%{cliente.nombre}"></s:text>
		<a href="showModCliente.action"><s:text name="%{getText('label.string.modificar')}"></s:text></a>
		<br><br><br>
		<h1><s:text name="label.lineas.subject"/></h1>
				<table class="borderAll">
			<tr>
		        <th><s:text name="label.cliente"/></th>
		        <th><s:text name="label.telefono"/></th>
		        <th><s:text name="label.antiguedad"/></th>
		        <th><s:text name="label.activa"/></th>
		        <th><s:text name="label.cambiar"/></th>
		        <th><s:text name="label.promocion"/></th>
		        <th><s:text name="label.tarifaVoz"/></th>
		        <th><s:text name="label.trifaDatos"/></th>
		        <th><s:text name="label.facturas"/></th>
		        <th><s:text name="label.modificar"/></th>
		    </tr>
		    <s:iterator value="lineas" status="status">
		        <tr class="<s:if test="#status.even">even</s:if><s:else>odd</s:else>">
		            <td class="nowrap"><s:property value="dni"/></td>
		            <td class="nowrap"><s:property value="telefono"/></td>
		            <td class="nowrap"><s:property value="antiguedad"/></td>
		            <td class="nowrap"><s:property value="activa"/></td>
		            <td class="nowrap"><s:property value="cambiar"/></td>
		            <td class="nowrap"><s:property value="promocion"/></td>
		            <td class="nowrap"><s:property value="tarifaVoz"/></td>
		            <td class="nowrap"><s:property value="tarifaDatos"/></td>
		            <td class="nowrap"><s:property value="facturas"/></td>
		            <td class="nowrap"><s:property value="modificar"/></td>
		        </tr>
		    </s:iterator>
		</table>
		<br>
		<s:text name="label.lineas.message"/>
	</body>
</html>
