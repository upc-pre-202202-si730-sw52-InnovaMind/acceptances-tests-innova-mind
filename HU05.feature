Feature: Como conductor profesional, no registrado en la aplicación, deseo crearme una cuenta para poder acceder a las características de la app.
    Scenario: E01: Registro exitoso
        TA01

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un correo electrónico no registrado, un DNI no registrado, su fecha de emisión, su dígito de seguridad y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Register”
        Then la app muestra un mensaje diciéndole que está registrado, pero que tiene que confirmar su cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | correo-electronico    | DNI      | fecha de emisión | dígito de seguridad | contraseña | confirmar contraseña | Resultado                                                   |
            | abeleldulce@gmail.com | 75893047 | 28/10/2018       | 03                  | Driver#05  | Driver#05            | Gracias por registrarse. Revise su correo para verificación |

    Scenario: E02: Registro inválido
        TA02

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales.
        When ingresa un correo electrónico registrado pero los demás datos son correctos.
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje diciéndole que el correo electrónico ya está registrado, y le sugiere iniciar sesión.

        Examples:
            | correo-electronico    | DNI      | fecha de emisión | dígito de seguridad | contraseña | confirmar contraseña | Resultado                                                          |
            | abeleldulce@gmail.com | 75893047 | 28/10/2018       | 03                  | Driver#05  | Driver#05            | Este correo ya se encuentra en uso. Le recomendamos iniciar sesión |