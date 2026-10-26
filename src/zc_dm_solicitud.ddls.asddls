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
      ModificadoTotalEl
}

