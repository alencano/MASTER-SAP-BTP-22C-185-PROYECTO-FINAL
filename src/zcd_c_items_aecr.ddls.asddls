@EndUserText.label: 'Sales Order Items - Consumption'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZCD_C_ITEMS_AECR
  as projection on ZCD_I_ITEMS_AECR
{
  key Id,
      Name,
      Description,
      Releasedate,
      Discontinueddate,
      Price,
      Height,
      Width,
      Depth,
      Quantity,
      Unitofmeasure,
      /* Associations */
      _Header: redirected to parent ZCD_C_HEADER_AECR
  }
