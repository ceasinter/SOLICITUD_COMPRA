@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DD Interface Maestro Solicitud'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_mastsol_cas
provider contract transactional_interface
  as projection on zr_mastsol_cas
{
  key SolicitudUUID,
      Description,
      FechaReq,
      Estatus,
   @Semantics.amount.currencyCode: 'CurrencyCode'   
      Total,
      CurrencyCode,
      
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
      _DetalleSolicitud: redirected to composition child zi_detsol_cas
}
