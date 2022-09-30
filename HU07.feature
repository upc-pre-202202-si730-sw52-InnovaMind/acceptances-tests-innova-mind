Feature: Como usuario de la red social, deseo ingresar con mi cuenta con la cual me registre 
    Scenario: E01: Iniciar sesión con datos validos
        TA01

        Given se encuentra en el formulario “Login”
        When ingrese el correo electronico y contraseña
        Then puede ingresar a la app de manera exitosa

        Examples:
            | correo-electronico      | Resultado                                                |
            | abeleldulce@gmail.com   | Ingresa al apartado principal de la aplicacion           |

    Scenario: E02: Recuperar contraseña
        TA02

        Given olvida su contraseña con la cual se registró en la plataforma
        When seleccione la opción “Forgot Password?”
        And la aplicación despliega el apartado de recuperar contraseña
        And selecciona en la opción “Continuar”
        Then recibe un código a su correo electrónico y se despliega el formulario “Ingrese el código de seguridad”

        Examples:
            | Link router 'Forgot Password'  | Section to update password   |   Result                                  |
            |  clic()                        |  Form to update password     |     Input the code to verify identity     |
    Scenario: E03: Cambiar contraseña
        TA02

        Given cuenta con el código de recuperación de contraseña
        When digita el código en el apartado “ingresa el código”
        And selecciona en la opción “Continuar”
        Then tiene la opción de cambiar su contraseña.

        Examples:
            | Section to input code  | button continue   |   Result                         |
            |  write code            |  clic()           |   Password changed               |