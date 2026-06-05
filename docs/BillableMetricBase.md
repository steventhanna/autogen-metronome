# BillableMetricBase

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_by** | Option<**Vec<String>**> | (DEPRECATED) use group_keys instead | [optional]
**group_keys** | Option<[**Vec<Vec<String>>**](Vec.md)> | Property names that are used to group usage costs on an invoice. Each entry represents a set of properties used to slice events into distinct buckets. | [optional]
**name** | **String** |  | 
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**aggregate** | Option<**String**> | (DEPRECATED) use aggregation_type instead | [optional]
**aggregate_keys** | Option<**Vec<String>**> | (DEPRECATED) use aggregation_key instead | [optional]
**filter** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | (DEPRECATED) use property_filters & event_type_filter instead | [optional]
**aggregation_key** | Option<**String**> | A key that specifies which property of the event is used to aggregate data. This key must be one of the property filter names and is not applicable when the aggregation type is 'count'. | [optional]
**event_type_filter** | Option<[**models::EventTypeFilter**](EventTypeFilter.md)> |  | [optional]
**property_filters** | Option<[**Vec<models::PropertyFilter>**](PropertyFilter.md)> | A list of filters to match events to this billable metric. Each filter defines a rule on an event property. All rules must pass for the event to match the billable metric. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**sql** | Option<**String**> | The SQL query associated with the billable metric | [optional]
**archived_at** | Option<**String**> | RFC 3339 timestamp indicating when the billable metric was archived. If not provided, the billable metric is not archived. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


