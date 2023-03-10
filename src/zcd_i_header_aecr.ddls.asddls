@AbapCatalog.sqlViewName: 'ZV_HEADER_AECR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header - Interface'
define root view ZCD_I_HEADER_AECR
  as select from zheader_aecr as Header
   composition [0..*] of ZCD_I_ITEMS_AECR as _Items
{
  key id           as Id,
      email        as Email,
      firstname    as Firstname,
      lastname     as Lastname,
      country      as Country,
      createon     as Createon,
      deliverydate as Deliverydate,
      orderstatus  as Orderstatus,
      imageurl     as Imageurl,
      _Items
  }
