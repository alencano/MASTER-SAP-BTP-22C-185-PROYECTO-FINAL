@AbapCatalog.sqlViewName: 'ZV_ITEMS_AECR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Intems - CDS Interface'
define view ZCD_I_ITEMS_AECR
  as select from zitems_aecr as items
  association to parent ZCD_I_HEADER_AECR as _header on $projection.Id = _header.Id
{
  key id               as Id,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      price            as Price,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure : 'unitofmeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      @Semantics.unitOfMeasure : true
      unitofmeasure    as Unitofmeasure,
      _header
}
