<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login Form</title>
    <style>
        .err {
            color: red;
        }
    </style>
</head>
<body>
<h3>Please Login:</h3>
<form:form action="${pageContext.request.contextPath}/processLoginForm" method="POST">

    <c:if test="${param.error != null}">
        <i class="err">Wrong user name or password</i>
    </c:if>
    <p>
        User: <input type="text" name="username"/>
    </p>
    <p>
        Pass: <input type="password" name="password"/>
    </p>
    <input type="submit" value="Login">
</form:form>
</body>
</html>
