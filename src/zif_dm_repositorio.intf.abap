INTERFACE zif_dm_repositorio PUBLIC.
  TYPES ty_area TYPE c LENGTH 10.
  TYPES ty_campos_faltantes TYPE STANDARD TABLE OF string WITH EMPTY KEY.

  METHODS validar_obligatorios
    IMPORTING
      id_solicitud TYPE sysuuid_x16
      area         TYPE ty_area
    RETURNING VALUE(campos_faltantes) TYPE ty_campos_faltantes.

  METHODS finalizar_tarea
    IMPORTING
      id_solicitud TYPE sysuuid_x16
      area         TYPE ty_area.

  METHODS registrar_outbox
    IMPORTING id_solicitud TYPE sysuuid_x16.
ENDINTERFACE.

