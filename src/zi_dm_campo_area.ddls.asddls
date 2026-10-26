@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DM: Campo de tarea'
define view entity ZI_DM_CAMPO_AREA
  as select from zdm_sol_campo
  association to parent ZI_DM_TAREA_AREA as _Tarea
    on  $projection.IdSolicitud = _Tarea.IdSolicitud
    and $projection.Area = _Tarea.Area
{
  key id_solicitud       as IdSolicitud,
  key area               as Area,
  key campo_tecnico      as CampoTecnico,
      valor              as Valor,
      tipo_dato          as TipoDato,
      moneda             as Moneda,
      unidad             as Unidad,
      modificado_por     as ModificadoPor,
      modificado_el      as ModificadoEl,
      modificado_total_el as ModificadoTotalEl,
      _Tarea
}

