# CreateProductListItemPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | displayed on invoices | 
**r#type** | **Type** |  (enum: FIXED, fixed, USAGE, usage, COMPOSITE, composite, SUBSCRIPTION, subscription, PROFESSIONAL_SERVICE, professional_service, PRO_SERVICE, pro_service) | 
**netsuite_internal_item_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**netsuite_overage_item_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**billable_metric_id** | Option<**uuid::Uuid**> | Required for USAGE products | [optional]
**sql_breakdown_granularity** | Option<**SqlBreakdownGranularity**> | Defines the breakdown behavior when calculating usage from SQL Billable Metrics. If set to 'service_period' (default), the usage will be evaluated once for all events the invoice service period and the usage will be applied at the last instant of the invoice. If set to 'hour', it will be broken down and evaluated for each hour. For most use cases, 'hour' is recommended. The setting has no effect for Streaming Billable Metrics. (enum: HOUR, hour, SERVICE_PERIOD, service_period) | [optional]
**composite_product_ids** | Option<**Vec<uuid::Uuid>**> | Required for COMPOSITE products | [optional]
**composite_tags** | Option<**Vec<String>**> | Required for COMPOSITE products | [optional]
**is_refundable** | Option<**bool**> | This field's availability is dependent on your client's configuration. Defaults to true. | [optional]
**composite_scope** | Option<**CompositeScope**> | Determines what spend contributes to calculating this charge. When composite scope is contract, calculates composite charge based on applicable spend per contract. When composite scope is customer, calculates composite charge based on applicable spend across all customer contracts. Defaults to contract. (enum: customer, CUSTOMER, contract, CONTRACT) | [optional]
**exclude_free_usage** | Option<**bool**> | Beta feature only available for composite products. If true, products with $0 will not be included when computing composite usage. Defaults to false | [optional]
**include_composite_spend** | Option<**bool**> | Only for composite products. If true, allows a composite to incorporate spend from other composite products. Defaults to false | [optional]
**tags** | Option<**Vec<String>**> |  | [optional]
**pricing_group_key** | Option<**Vec<String>**> | For USAGE products only. If set, pricing for this product will be determined for each pricing_group_key value, as opposed to the product as a whole. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric. | [optional]
**presentation_group_key** | Option<**Vec<String>**> | For USAGE products only. Groups usage line items on invoices. The superset of values in the pricing group key and presentation group key must be set as one compound group key on the billable metric. | [optional]
**quantity_conversion** | Option<[**models::QuantityConversion**](QuantityConversion.md)> |  | [optional]
**quantity_rounding** | Option<[**models::QuantityRounding**](QuantityRounding.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


