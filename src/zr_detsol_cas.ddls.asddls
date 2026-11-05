@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DD Child para Detalle de Solicitud'
@Metadata.ignorePropagatedAnnotations: true
define view entity zr_detsol_cas
  as select from ztb_detsol_cas
  association to parent zr_mastsol_cas as _MaestroSolicitud on $projection.SolicitudUUID = _MaestroSolicitud.SolicitudUUID
{
  key detsol_uuid           as DetSolUUID,
      solicitud_uuid        as SolicitudUUID,
      material_id           as MaterialID,
      descripcion           as Descripcion,
      @Semantics.quantity.unitOfMeasure: 'Unidad'
      cantidad              as Cantidad,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      precio_unitario       as PrecioUnitario,
      currency_code         as CurrencyCode,
      unidad                as Unidad,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,

      //      ASOCIACIONES
      _MaestroSolicitud
}
