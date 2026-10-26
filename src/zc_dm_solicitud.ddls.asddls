@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DM: Consumo de solicitudes'
@Metadata.allowExtensions: true
define root view entity ZC_DM_SOLICITUD
  provider contract transactional_query
  as projection on ZI_DM_SOLICITUD
{
  key IdSolicitud,
      Operacion,
      Material,
      Sociedad,
      Centro,
      TipoMaterial,
      EsBpm,
      Estado,
      InicioParalelo,
      MaterialResultado,
      CreadoPor,
      CreadoEl,
      ModificadoPor,
      ModificadoEl,
      ModificadoTotalEl,
      _Solicitante   : redirected to ZC_DM_TAREA_AREA,
      _Comercial     : redirected to ZC_DM_TAREA_AREA,
      _Pcp           : redirected to ZC_DM_TAREA_AREA,
      _Regulatorio   : redirected to ZC_DM_TAREA_AREA,
      _Contabilidad  : redirected to ZC_DM_TAREA_AREA,
      _Logistica     : redirected to ZC_DM_TAREA_AREA,
      _Calidad       : redirected to ZC_DM_TAREA_AREA,
      _ControlCalidad: redirected to ZC_DM_TAREA_AREA,
      _CamposSolicitante   : redirected to ZC_DM_CAMPO_AREA,
      _CamposComercial     : redirected to ZC_DM_CAMPO_AREA,
      _CamposPcp           : redirected to ZC_DM_CAMPO_AREA,
      _CamposRegulatorio   : redirected to ZC_DM_CAMPO_AREA,
      _CamposContabilidad  : redirected to ZC_DM_CAMPO_AREA,
      _CamposLogistica     : redirected to ZC_DM_CAMPO_AREA,
      _CamposCalidad       : redirected to ZC_DM_CAMPO_AREA,
      _CamposControlCalidad: redirected to ZC_DM_CAMPO_AREA
}

