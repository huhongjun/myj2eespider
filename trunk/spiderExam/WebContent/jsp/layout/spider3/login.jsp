<%@ include file="/jsp/common/taglibs.jsp"%>
<%@ page import="org.acegisecurity.ui.AbstractProcessingFilter" %>
<%@ page import="org.acegisecurity.ui.webapp.AuthenticationProcessingFilter" %>
<%@ page import="org.acegisecurity.AuthenticationException" %>

<html>
    <head>
        <%@ include file="/jsp/common/meta.jsp" %>
        <title><decorator:title/></title>

        <link rel="stylesheet" type="text/css" href="<c:url value='/css/layout/spider3/login.css'/>" />

        <script type="text/javascript" src="<c:url value='/js/base.js'/>"></script>
        <decorator:head/>
    </head>
    
<body>

	<div class="loginholder">
		<div class="title"><fmt:message key="page.login.title"/></div>
	
		<div class="labels">
			<fmt:message key="page.login.user"/>:<br/><br/>
			<fmt:message key="page.login.password"/>:<br/><br/>
			<fmt:message key="page.login.language"/>:<br/><br/>
		</div>
		
	<form action="<c:url value='/j_acegi_security_check'/>" method="POST">
		<div class="loginform">
			<input type='text' name='j_username' <c:if test="${not empty param.login_error}">value='<%= session.getAttribute(AuthenticationProcessingFilter.ACEGI_SECURITY_LAST_USERNAME_KEY) %>'</c:if>><br/>
			<input type='password' name='j_password'><br/>
	
			<select name="language" id="language">
	           	<option value="<fmt:message key="language.locale.1"/>"><fmt:message key="language.name.1"/></option>
	           	<option value="<fmt:message key="language.locale.2"/>"><fmt:message key="language.name.2"/></option>
	        </select><br/>
	        
	        <input type="checkbox" name="_acegi_security_remember_me"> <fmt:message key="page.login.remember"/>
		</div>
	
		<c:if test="${not empty param.login_error}">
			<div class="error">
				<fmt:message key="page.login.error"/><br/>
				<fmt:message key="page.login.error.by"/> <%= ((AuthenticationException) session.getAttribute(AbstractProcessingFilter.ACEGI_SECURITY_LAST_EXCEPTION_KEY)).getMessage() %>
			</div>
		</c:if>
	
		<div class="loginbtn">
			<input value="Submit" type="submit"/>
		</div>
	</form>
	</div>
 
    <script>
    	//escolhe a linguagem de acordo com o valor do request (pegado do sistema operacional)
    	obj_language = document.getElementById('language');
    	for (i=0; i<obj_language.length; i++) {
    		if (obj_language.options[i].value == '<c:out value="${pageContext.request.locale}" />') {
    			obj_language.options[i].selected = true;
    		}
	    }
    </script>

</body>
</html>
