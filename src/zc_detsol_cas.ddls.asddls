@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DD Comsumption Detalle Solicitud'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
//@Search.searchable: true
@ObjectModel.semanticKey: [ 'DetSolUUID' ]

define view entity zc_detsol_cas
  as projection on zr_detsol_cas
{
  key DetSolUUID,
      SolicitudUUID,
      MaterialID,
      Descripcion,
      @Semantics.quantity.unitOfMeasure: 'Unidad'
      Cantidad,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      PrecioUnitario,
      CurrencyCode,
      Unidad,
      @Semantics.user.createdBy: true
      CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      /* Associations */
      _MaestroSolicitud: redirected to parent zc_mastsol_cas
}
