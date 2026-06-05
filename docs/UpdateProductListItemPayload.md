# UpdateProductListItemPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the product to update | 
**name** | Option<**String**> | displayed on invoices. If not provided, defaults to product's current name. | [optional]
**starting_at** | **String** | Timestamp representing when the update should go into effect. It must be on an hour boundary (e.g. 1:00, not 1:30). | 
**is_refundable** | Option<**bool**> | Defaults to product's current refundability status. This field's availability is dependent on your client's configuration. | [optional]
**exclude_free_usage** | Option<**bool**> | Beta feature only available for composite products. If true, products with $0 will not be included when computing composite usage. Defaults to false | [optional]
**include_composite_spend** | Option<**bool**> | Only for composite products. If true, allows a composite to incorporate spend from other composite products. Defaults to false | [optional]
**billable_metric_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | Available for USAGE products only. If not provided, defaults to product's current billable metric. | [optional]
**sql_breakdown_granularity** | Option<**String**> | Defines the breakdown behavior when calculating usage from SQL Billable Metrics. If set to 'service_period' (default), the usage will be evaluated once for all events the invoice service period and the usage will be applied at the last instant of the invoice. If set to 'hour', it will be broken down and evaluated for each hour. For most use cases, 'hour' is recommended. The setting has no effect for Streaming Billable Metrics. | [optional]
**netsuite_internal_item_id** | Option<**String**> | If not provided, defaults to product's current netsuite_internal_item_id. This field's availability is dependent on your client's configuration. | [optional]
**netsuite_overage_item_id** | Option<**String**> | Available for USAGE and COMPOSITE products only. If not provided, defaults to product's current netsuite_overage_item_id. This field's availability is dependent on your client's configuration. | [optional]
**composite_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Available for COMPOSITE products only. If not provided, defaults to product's current composite_product_ids. | [optional]
**quantity_conversion** | Option<[**models::QuantityConversion**](QuantityConversion.md)> |  | [optional]
**quantity_rounding** | Option<[**models::QuantityRounding**](QuantityRounding.md)> |  | [optional]
**tags** | Option<**Vec<String>**> | If not provided, defaults to product's current tags | [optional]
**composite_tags** | Option<**Vec<String>**> | Available for COMPOSITE products only. If not provided, defaults to product's current composite_tags. | [optional]
**pricing_group_key** | Option<**Vec<String>**> | For USAGE products only. If set, pricing for this product will be determined for each pricing_group_key value, as opposed to the product as a whole. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric. | [optional]
**presentation_group_key** | Option<**Vec<String>**> | For USAGE products only. Groups usage line items on invoices. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


