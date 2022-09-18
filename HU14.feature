Feature: Como usuario quiero contactarme con la empresa para hacer un reclamo o resolver alguna duda.

    Scenario: E01: Desplazamiento correcto 

        Given el visitante se encuentra en el landing page
        When navegue hasta la parte inferior del landing page 
        And llegue al footer 
        Then visualizará los datos de contacto y redes sociales 