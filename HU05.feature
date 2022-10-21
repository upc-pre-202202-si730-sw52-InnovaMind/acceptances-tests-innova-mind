Feature: Como conductor profesional, no registrado en la aplicación, deseo crearme una cuenta para poder acceder a la aplicación.
    Scenario: E01: Registro exitoso
        TA01

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un correo electrónico no registrado, un DNI no registrado, su fecha de emisión, su dígito de seguridad y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Register”
        Then la app muestra un mensaje diciéndole que está registrado, pero que tiene que confirmar su cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | correo-electronico    | DNI      | contraseña | confirmar contraseña | Mensaje de Resultado                                                |
            | abeleldulce@gmail.com | 75893047 | Driver#05  | Driver#05            | Fuiste registrado de manera exitosa, ir a login para iniciar sesión |

    Scenario: E02: Registro inválido
        TA02

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa un correo electrónico registrado pero los demás datos son correctos
        And presiona el botón “Register”
        Then la app le mostrará un mensaje diciéndole que el correo electrónico ya está registrado, y le sugiere iniciar sesión

        Examples:
            | correo-electronico    | DNI      | contraseña | confirmar contraseña | Resultado                     |
            | abeleldulce@gmail.com | 75893047 | Driver#05  | Driver#05            | Este correo ya fue registrado |
    Scenario: E03: Intenta registrarse sin completar todos los campos
        TA02

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When no ingresa ningun dato solicitado como requerido
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje indicando que debe completar todos los campos requeridos

        Examples:
            | correo-electronico    | DNI  | contraseña | confirmar contraseña | Resultado                                |
            | ""                    | ""   | ""         | ""                   | Por favor completa los campos requeridos |

Scenario: E04: Ingrega una contraseña de confirmación incorrecta
        TA02

        Given se encuentra en el formulario de registro de cuenta para conductores profesionales
        When ingresa la confirmación de la contraseña de manera incorrecta
        And presiona el botón “Register”.
        Then la app le mostrará un mensaje indicando que debe confirmar con la misma contraseña

        Examples:
            | correo-electronico    | DNI      | contraseña | confirmar contraseña   | Mensaje de Resultado                       |
            | abeleldulce@gmail.com | 75893047 | Driver#05  | Driver#05Az            | Ingresa la misma contraseña para confirmar |