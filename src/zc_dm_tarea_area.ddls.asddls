@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DM: Consumo de tareas por área'
@Metadata.allowExtensions: true
define root view entity ZC_DM_TAREA_AREA
  provider contract transactional_query
  as projection on ZI_DM_TAREA_AREA
{
  key IdSolicitud,
  key Area,
      Estado,
      Requerida,
      HabilitadaEl,
      IniciadaEl,
      FinalizadaEl,
      VencimientoEl,
      Responsable,
      MotivoCorreccion,
      ModificadoPor,
      ModificadoEl,
      ModificadoTotalEl,
      _Campos : redirected to composition child ZC_DM_CAMPO_AREA
}

