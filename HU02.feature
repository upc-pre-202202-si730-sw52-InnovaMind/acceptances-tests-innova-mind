Feature: Como chofer quiero cambiar mi estado a disponible dentro del home para que las empresas me tomen en cuenta al momento de buscar choferes.

    Scenario: E01: Realizar Cambiar estado

        Given el usuario quiere cambiar su estado actual
        When ingresa en el botón “estado", dentro del home
        And presiona el estado que desea tener 
        Then su estado laboral se cambia al que seleccionó.

        Examples:
            | DNI      | Status        |                                                   |
            | 72123587 | Disponible    |
            | 72143587 | No Disponible |
            | 72131587 | Disponible    |