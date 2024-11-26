Feature: Pruebas de inicio de sesión y registro de hora médica

  # Caso 4.1: Ingreso de nombre de usuario con datos almacenados en BD
  Scenario: Ingreso con usuario válido
    Given I open the login page
    When I enter valid username and password from database
    Then I should be redirected to the dashboard page

  # Caso 4.2: Ingreso de nombre de usuario y password con datos erróneos
  Scenario: Ingreso con usuario inválido
    Given I open the login page
    When I enter invalid username and password
    Then I should see an error message

  # Caso 4.3: Registro de hora médica veterinaria
  Scenario: Registro de hora médica
    Given I am on the veterinary appointment page
    When I enter the appointment details
    Then the appointment should be saved successfully
