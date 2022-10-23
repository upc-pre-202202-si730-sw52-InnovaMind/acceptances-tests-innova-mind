Feature: Como usuario de la red social, deseo ingresar con mi cuenta con la cual me registre en la aplicación
    Scenario: E01: Iniciar sesión con datos validos
        TA01

        Given se encuentra en el formulario “Login”
        When ingrese el correo electronico y contraseña
        Then puede ingresar a la app de manera exitosa

        Examples:
            | correo-electronico      | Resultado                                                |
            | abeleldulce@gmail.com   | Ingresa al apartado de home de acuerdo a su rol          |

    Scenario: E02: Ingresar correo y contraseña invalido
        TA02

        Given se encuentra en el formulario “Login”
        When ingrese el correo electronico y contraseña incorrectos
        Then no puede ingresar a la app

        Examples:
            | Input email        | Input password   |   Resultado en mensaje        |
            |  cierto@gmail.com  | Akdsjfajh31#     |   Crendenciales invalidos     |
    Scenario: E03: Ingresa el usuario su correo, pero olvida digitar su contraseña
        TA03

        Given se encuentra en el formulario “Login”
        When ingrese el correo electronico y no digita su contraseña
        Then no puede ingresar a la app

        Examples:
            | Input email        | Input password   |   Resultado en mensaje               |
            |  cierto@gmail.com  | ""               |   Por favor ingresa su contraseña    |
    Scenario: E04: Ingresa el usuario su contraseña, pero olvida digitar su correo
        TA03

        Given se encuentra en el formulario “Login”
        When ingrese el correo contraseña y no digita su correo
        Then no puede ingresar a la app

        Examples:
            | Input email        | Input password   |   Resultado en mensaje           |
            |  cierto@gmail.com  | ""               |   Por favor ingresa su correo    |