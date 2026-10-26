@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DM: Solicitud'
define root view entity ZI_DM_SOLICITUD
  as select from zdm_sol_cab
  association [0..1] to ZI_DM_TAREA_AREA as _Solicitante
    on  $projection.IdSolicitud = _Solicitante.IdSolicitud
    and _Solicitante.Area = 'SOLIC'
  association [0..1] to ZI_DM_TAREA_AREA as _Comercial
    on  $projection.IdSolicitud = _Comercial.IdSolicitud
    and _Comercial.Area = 'COM'
  association [0..1] to ZI_DM_TAREA_AREA as _Pcp
    on  $projection.IdSolicitud = _Pcp.IdSolicitud
    and _Pcp.Area = 'PCP'
  association [0..1] to ZI_DM_TAREA_AREA as _Regulatorio
    on  $projection.IdSolicitud = _Regulatorio.IdSolicitud
    and _Regulatorio.Area = 'AR'
  association [0..1] to ZI_DM_TAREA_AREA as _Contabilidad
    on  $projection.IdSolicitud = _Contabilidad.IdSolicitud
    and _Contabilidad.Area = 'CONT'
  association [0..1] to ZI_DM_TAREA_AREA as _Logistica
    on  $projection.IdSolicitud = _Logistica.IdSolicitud
    and _Logistica.Area = 'LOG'
  association [0..1] to ZI_DM_TAREA_AREA as _Calidad
    on  $projection.IdSolicitud = _Calidad.IdSolicitud
    and _Calidad.Area = 'AS'
  association [0..1] to ZI_DM_TAREA_AREA as _ControlCalidad
    on  $projection.IdSolicitud = _ControlCalidad.IdSolicitud
    and _ControlCalidad.Area = 'CC'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposSolicitante
    on  $projection.IdSolicitud = _CamposSolicitante.IdSolicitud
    and _CamposSolicitante.Area = 'SOLIC'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposComercial
    on  $projection.IdSolicitud = _CamposComercial.IdSolicitud
    and _CamposComercial.Area = 'COM'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposPcp
    on  $projection.IdSolicitud = _CamposPcp.IdSolicitud
    and _CamposPcp.Area = 'PCP'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposRegulatorio
    on  $projection.IdSolicitud = _CamposRegulatorio.IdSolicitud
    and _CamposRegulatorio.Area = 'AR'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposContabilidad
    on  $projection.IdSolicitud = _CamposContabilidad.IdSolicitud
    and _CamposContabilidad.Area = 'CONT'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposLogistica
    on  $projection.IdSolicitud = _CamposLogistica.IdSolicitud
    and _CamposLogistica.Area = 'LOG'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposCalidad
    on  $projection.IdSolicitud = _CamposCalidad.IdSolicitud
    and _CamposCalidad.Area = 'AS'
  association [0..*] to ZI_DM_CAMPO_AREA as _CamposControlCalidad
    on  $projection.IdSolicitud = _CamposControlCalidad.IdSolicitud
    and _CamposControlCalidad.Area = 'CC'
{
  key id_solicitud      as IdSolicitud,
      operacion         as Operacion,
      material          as Material,
      sociedad          as Sociedad,
      centro            as Centro,
      tipo_material     as TipoMaterial,
      es_bpm            as EsBpm,
      estado            as Estado,
      inicio_paralelo   as InicioParalelo,
      material_resultado as MaterialResultado,
      creado_por        as CreadoPor,
      creado_el         as CreadoEl,
      modificado_por    as ModificadoPor,
      modificado_el     as ModificadoEl,
      modificado_total_el as ModificadoTotalEl,
      _Solicitante,
      _Comercial,
      _Pcp,
      _Regulatorio,
      _Contabilidad,
      _Logistica,
      _Calidad,
      _ControlCalidad,
      _CamposSolicitante,
      _CamposComercial,
      _CamposPcp,
      _CamposRegulatorio,
      _CamposContabilidad,
      _CamposLogistica,
      _CamposCalidad,
      _CamposControlCalidad
}

