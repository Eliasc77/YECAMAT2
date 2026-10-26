CLASS lhc_tarea_area DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR TareaArea
      RESULT result.
ENDCLASS.

CLASS lhc_tarea_area IMPLEMENTATION.
  METHOD get_global_authorizations.
    IF requested_authorizations-%update = if_abap_behv=>mk-on.
      result-%update = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%assoc-_Campos = if_abap_behv=>mk-on.
      result-%assoc-_Campos = if_abap_behv=>auth-allowed.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
