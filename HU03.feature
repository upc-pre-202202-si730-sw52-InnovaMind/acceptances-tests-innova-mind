Feature: Como usuario chofer quiero actualizar mi informacion para que las empresas consideren mis datos actuales.

    Scenario: E01: Visualizar datos personales
        TA01
        Given el usuario se registra satisfactoriamente
        When se dirige a la sección “Mi perfil”
        Then la aplicación le muestra sus datos personales básicos.

        Examples:
            | "Mi perfil" |
            | clic()      |

    Scenario: E02: Acceder al formulario de actualización de datos
        TA02
        Given el usuario se encuentra en la sección “Mi perfil”
        When se dirige al botón “actualizar datos”
        Then la aplicación despliega un formulario, con los campos disponibles, para completar con su información.

        Examples:
            | "actualizar datos" |
            | clic()             |

    Scenario: E03: Rellenar el formulario con los datos.
        TA03

        Given el usuario despliega el formulario correctamente.
        And el usuario coloca la cantidad de años de experiencia en el campo “Años de experiencia”
        And el usuario selecciona el departamento que desee en el submenú “Departamento”
        And el usuario selecciona la ciudad que desee en el submenú “Ciudad”
        And coloca su edad en el campo “Edad” 
        And el usuario selecciona el tipo de licencia que posee en el submenú “Tipo de licencia de conducir”
        And el usuario selecciona el grado de estudios que tiene en el submenú “Grado de estudios”
        When oprime el botón “Confirmar datos”
        Then la aplicación le redirecciona a la sección mi perfil, señalando sus datos actualizados.

        Examples:
            | anios-experiencia | departamento  | ciudad     | licencia     | grado-estudios   | confirmar datos |
            | 3                 | Lima          | Lima       | AIIIc        | Bachillerato     | clic()          |