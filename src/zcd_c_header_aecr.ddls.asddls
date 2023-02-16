@EndUserText.label: 'Sales Order Header - Consumption'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZCD_C_HEADER_AECR
  as projection on ZCD_I_HEADER_AECR
{
  key Id,
      Email,
      Firstname,
      Lastname,
      Country,
      Createon,
      Deliverydate,
      Orderstatus,
      Imageurl,
      /* Associations */
      _Items: redirected to composition child ZCD_C_ITEMS_AECR
  }
