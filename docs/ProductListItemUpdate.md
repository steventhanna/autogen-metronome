# ProductListItemUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> |  | [optional]
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**is_refundable** | Option<**bool**> |  | [optional]
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**billable_metric_id** | Option<**uuid::Uuid**> |  | [optional]
**quantity_conversion** | Option<[**models::QuantityConversion**](QuantityConversion.md)> |  | [optional]
**quantity_rounding** | Option<[**models::QuantityRounding**](QuantityRounding.md)> |  | [optional]
**netsuite_internal_item_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**netsuite_overage_item_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**composite_product_ids** | Option<**Vec<uuid::Uuid>**> |  | [optional]
**composite_tags** | Option<**Vec<String>**> |  | [optional]
**tags** | Option<**Vec<String>**> |  | [optional]
**exclude_free_usage** | Option<**bool**> |  | [optional]
**include_composite_spend** | Option<**bool**> | Only for composite products. If true, allows a composite to incorporate spend from other composite products. Defaults to false | [optional]
**pricing_group_key** | Option<**Vec<String>**> | For USAGE products only. If set, pricing for this product will be determined for each pricing_group_key value, as opposed to the product as a whole. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric. | [optional]
**presentation_group_key** | Option<**Vec<String>**> | For USAGE products only. Groups usage line items on invoices. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


