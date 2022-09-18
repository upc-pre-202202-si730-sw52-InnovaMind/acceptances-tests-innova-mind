Feature: Como posible usuario quiero desplazarme entre las secciones de la página web para visualizar la información importante para mí. 

    Scenario: E01: Desplazamiento correcto 

        Given el visitante se encuentra en el landing page Y quiere acceder a otra sección 
        When seleccione el botón correspondiente a esta 
        Then lo redirigirá a la sección elegida

        Given el visitante de la landing page desea conocer todas las secciones
        When seleccione los botones de menú de navegación
        Then se mostrará la sección correspondiente