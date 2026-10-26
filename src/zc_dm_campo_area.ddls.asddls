@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DM: Consumo de campos por área'
@Metadata.allowExtensions: true
define view entity ZC_DM_CAMPO_AREA
  as projection on ZI_DM_CAMPO_AREA
{
  key IdSolicitud,
  key Area,
  key CampoTecnico,
      Valor,
      TipoDato,
      Moneda,
      Unidad,
      ModificadoPor,
      ModificadoEl,
      ModificadoTotalEl,
      _Tarea : redirected to parent ZC_DM_TAREA_AREA
}

