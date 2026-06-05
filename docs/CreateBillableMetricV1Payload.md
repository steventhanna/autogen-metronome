# CreateBillableMetricV1Payload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The display name of the billable metric. | 
**sql** | Option<**String**> | The SQL query associated with the billable metric. This field is mutually exclusive with aggregation_type, event_type_filter, property_filters, aggregation_key, and group_keys. If provided, these other fields must be omitted. | [optional]
**event_type_filter** | Option<[**models::EventTypeFilter**](EventTypeFilter.md)> |  | [optional]
**property_filters** | Option<[**Vec<models::PropertyFilter>**](PropertyFilter.md)> | A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric. | [optional]
**aggregation_type** | Option<[**models::AggregationType**](AggregationType.md)> |  | [optional]
**aggregation_key** | Option<**String**> | A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'. | [optional]
**group_keys** | Option<[**Vec<Vec<String>>**](Vec.md)> | Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


