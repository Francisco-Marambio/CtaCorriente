<html>
<head><title>Login - Banco Platinum</title></head>
<body>
    <h2>Iniciar Sesi�n</h2>
    <form action="login" method="post">
        <label for="username">Usuario:</label>
        <input type="text" name="username" required /><br><br>
        <label for="password">Contrase�a:</label>
        <input type="password" name="password" required /><br><br>
        <input type="submit" value="Iniciar sesi�n" />
    </form>

    <c:if test="${param.error != null}">
        <p style="color:red;">Usuario o contrase�a incorrectos.</p>
    </c:if>
</body>
</html>
