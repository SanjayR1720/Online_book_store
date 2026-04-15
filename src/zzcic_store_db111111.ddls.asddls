@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCISTORE_DB111111'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_STORE_DB111111
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_STORE_DB111111
  association [1..1] to ZZCIR_STORE_DB111111 as _BaseEntity on $projection.BOOKNUMBER = _BaseEntity.BOOKNUMBER
{
  key BookNumber,
  Title,
  Genre,
  DateOfStart,
  DateOfEnd,
  Amount,
  PaymentStatus,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
