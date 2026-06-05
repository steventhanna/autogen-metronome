# CreateBillableMetricV1V1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The display name of the billable metric. | 
**sql** | Option<**String**> | The SQL query associated with the billable metric. This field is mutually exclusive with aggregation_type, event_type_filter, property_filters, aggregation_key, and group_keys. If provided, these other fields must be omitted. | [optional]
**event_type_filter** | Option<[**models::CreateBillableMetricV1V1RequestEventTypeFilter**](createBillableMetricV1_v1_request_event_type_filter.md)> |  | [optional]
**property_filters** | Option<[**Vec<models::CreateBillableMetricV1V1RequestPropertyFiltersInner>**](createBillableMetricV1_v1_request_property_filters_inner.md)> | A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric. | [optional]
**aggregation_type** | Option<**String**> | Specifies the type of aggregation performed on matching events. | [optional]
**aggregation_key** | Option<**String**> | Specifies the type of aggregation performed on matching events. Required if `sql` is not provided. | [optional]
**group_keys** | Option<[**Vec<Vec<String>>**](Vec.md)> | Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to attach to the billable metric. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


