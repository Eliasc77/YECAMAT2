INTERFACE zif_dm_material PUBLIC.
  TYPES:
    BEGIN OF ty_resultado,
      exito     TYPE abap_bool,
      material TYPE c LENGTH 40,
      codigo    TYPE c LENGTH 30,
      mensaje   TYPE c LENGTH 255,
    END OF ty_resultado.

  METHODS procesar
    IMPORTING id_solicitud TYPE sysuuid_x16
    RETURNING VALUE(resultado) TYPE ty_resultado.
ENDINTERFACE.
