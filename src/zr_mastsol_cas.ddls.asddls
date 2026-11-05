@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DD Root Maestro de Solicitud'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zr_mastsol_cas
  as select from ztb_mastsol_cas
  composition [0..*] of zr_detsol_cas as _DetalleSolicitud
{
  key solicitud_uuid        as SolicitudUUID,
      description           as Description,
      fecha_req             as FechaReq,
      estatus               as Estatus,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total                 as Total,
      currency_code         as CurrencyCode,
      
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      //      ASOCIACIONES
      _DetalleSolicitud
}
