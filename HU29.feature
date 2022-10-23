Feature: Como driver quiero filtros para poder encontrar los trabajos que se adecuen a las características de empleo que busco.
Scenario: Selección de filtros
    CA01

    Given que el driver esta en la seccion apply for job
    When seleccione los filtros que requiere
    Then se habilita un botón para poder hacer el filtrado.

    Examples:
        | sueldo     | licencia  | anios-de-experencia |
        | $2000      | AIIa      | 4                   |

Scenario: Filtrado de trabajos.
    CA02

    Given que el driver selecciona los filtros que desea
    When presione el botón de "filtrado"
    Then se muestran los trabajos que cumplen con los filtros seleccionados.

    Examples:
        | filtrado    |
        | clic()      |