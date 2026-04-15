@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZCISTORE_DB111111'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZCIR_STORE_DB111111
  as select from ZSTORE_DB111
{
  key book_number as BookNumber,
  title as Title,
  genre as Genre,
  date_of_start as DateOfStart,
  date_of_end as DateOfEnd,
  amount as Amount,
  payment_status as PaymentStatus,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
