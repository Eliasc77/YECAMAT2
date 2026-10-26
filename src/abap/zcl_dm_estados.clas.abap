CLASS zcl_dm_estados DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CONSTANTS:
      BEGIN OF solicitud,
        borrador          TYPE c LENGTH 20 VALUE 'BORRADOR',
        pend_clasif       TYPE c LENGTH 20 VALUE 'PEND_CLASIF',
        en_proceso        TYPE c LENGTH 20 VALUE 'EN_PROCESO',
        pend_revision     TYPE c LENGTH 20 VALUE 'PEND_REVISION',
        pend_integracion  TYPE c LENGTH 20 VALUE 'PEND_INTEGRACION',
        activa            TYPE c LENGTH 20 VALUE 'ACTIVA',
        correccion        TYPE c LENGTH 20 VALUE 'CORRECCION',
        error_integracion TYPE c LENGTH 20 VALUE 'ERROR_INTEGRACION',
        cancelada         TYPE c LENGTH 20 VALUE 'CANCELADA',
      END OF solicitud,
      BEGIN OF area,
        no_requerida TYPE c LENGTH 15 VALUE 'NO_REQUERIDA',
        pendiente    TYPE c LENGTH 15 VALUE 'PENDIENTE',
        en_proceso   TYPE c LENGTH 15 VALUE 'EN_PROCESO',
        finalizada   TYPE c LENGTH 15 VALUE 'FINALIZADA',
        correccion   TYPE c LENGTH 15 VALUE 'CORRECCION',
      END OF area.
ENDCLASS.

CLASS zcl_dm_estados IMPLEMENTATION.
ENDCLASS.

