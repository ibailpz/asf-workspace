<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link href="<s:url value='/css/main.css'/>" rel="stylesheet"
	type="text/css" />
<title><s:text name="label.languagedesigner.subject" /></title>
</head>
<body>
	<div class="titleDiv">
		<s:text name="application.idCliente.title" />
	</div>
	<h1>
		<s:text name="label.modCliente.subject" />
	</h1>
	<br>
	<s:form action="modCliente" method="POST">
		<tr>
			<td colspan="2"><s:actionerror /> <!--<s:fielderror />--></td>
		</tr>

		<s:textfield name="label.dni"
			label="%{getText('label.modCliente.dni')}" />
		<s:textfield name="label.nombre"
			label="%{getText('label.modCliente.nombre')}" />
		<s:textfield name="labe.direccion"
			label="%{getText('label.modCliente.direccion')}" />
		<s:textfield name="label.email"
			label="%{getText('label.modCliente.email')}" />
		<br>
		<s:submit value="%{getText('label.modCliente.guardar')}" align="left" />
		<s:submit value="%{getText('label.modCliente.cancelar')}" align="left" />
	</s:form>
</body>
</html>
