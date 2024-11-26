<html>
<head><title>Login - Banco Platinum</title></head>
<body>
    <h2>Iniciar Sesión</h2>
    <form action="login" method="post">
        <label for="username">Usuario:</label>
        <input type="text" name="username" required /><br><br>
        <label for="password">Contraseña:</label>
        <input type="password" name="password" required /><br><br>
        <input type="submit" value="Iniciar sesión" />
    </form>

    <c:if test="${param.error != null}">
        <p style="color:red;">Usuario o contraseña incorrectos.</p>
    </c:if>
</body>
</html>
