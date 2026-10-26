INTERFACE zif_dm_repositorio PUBLIC.
  METHODS validar_obligatorios
    IMPORTING
      id_solicitud TYPE sysuuid_x16
      area         TYPE c LENGTH 10
    RETURNING VALUE(campos_faltantes) TYPE string_table.

  METHODS finalizar_tarea
    IMPORTING
      id_solicitud TYPE sysuuid_x16
      area         TYPE c LENGTH 10
    RAISING cx_static_check.

  METHODS registrar_outbox
    IMPORTING id_solicitud TYPE sysuuid_x16
    RAISING cx_static_check.
ENDINTERFACE.

