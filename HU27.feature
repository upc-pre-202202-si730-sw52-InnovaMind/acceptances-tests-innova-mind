Feature: Como posible usuario quiero conocer cuales son los planes, los beneficios y los precios de estos para convenientes para mí.

    Scenario: E01: Visualización correcta 
    CA01
        Given el visitante se encuentra en el landing page 
        When seleccione la sección “Planes y precios” en la barra de navegación 
        Then se muestra la sección sobre los planes y precios
    CA02
        Given el visitante se encuentra en el landing page 
        When seleccione la sección “Planes y precios” en la barra de navegación
        Then observa que los planes le parecen accesibles para poder usarlo