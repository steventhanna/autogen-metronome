# SearchEventsV1200ResponseInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**customer_id** | **String** | The ID of the customer in the ingest event body | 
**event_type** | **String** |  | 
**properties** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**transaction_id** | **String** |  | 
**is_duplicate** | Option<**bool**> |  | [optional]
**processed_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**matched_customer** | Option<[**models::SearchEventsV1200ResponseInnerMatchedCustomer**](SearchEventsV1200ResponseInnerMatchedCustomer.md)> |  | [optional]
**matched_billable_metrics** | Option<[**Vec<models::SearchEventsV1200ResponseInnerMatchedBillableMetricsInner>**](SearchEventsV1200ResponseInnerMatchedBillableMetricsInner.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


