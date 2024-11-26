package com.platinum.test;

import com.platinum.DatabaseConnection;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.SQLException;

public class DatabaseConnectionTest {

    @Test
    public void testConnection() {
        try (Connection conn = DatabaseConnection.getConnection()) {
            // Verificamos si la conexión no es nula
            assertNotNull(conn, "La conexión a la base de datos falló.");
        } catch (SQLException e) {
            e.printStackTrace();
            fail("La conexión a la base de datos ha fallado.");
        }
    }
}
