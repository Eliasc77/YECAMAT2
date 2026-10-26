@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DM: Tarea de área'
define root view entity ZI_DM_TAREA_AREA
  as select from zdm_sol_area
  composition [0..*] of ZI_DM_CAMPO_AREA as _Campos
{
  key id_solicitud       as IdSolicitud,
  key area               as Area,
      estado             as Estado,
      requerida          as Requerida,
      habilitada_el      as HabilitadaEl,
      iniciada_el        as IniciadaEl,
      finalizada_el      as FinalizadaEl,
      vencimiento_el     as VencimientoEl,
      responsable        as Responsable,
      motivo_correccion  as MotivoCorreccion,
      modificado_por     as ModificadoPor,
      modificado_el      as ModificadoEl,
      modificado_total_el as ModificadoTotalEl,
      _Campos
}

