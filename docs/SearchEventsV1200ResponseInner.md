# SearchEventsV1200ResponseInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**customer_id** | **String** | The ID of the customer in the ingest event body | 
**event_type** | **String** |  | 
**properties** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**timestamp** | **String** |  | 
**transaction_id** | **String** |  | 
**is_duplicate** | Option<**bool**> |  | [optional]
**processed_at** | Option<**String**> |  | [optional]
**matched_customer** | Option<[**models::SearchEventsV1200ResponseInnerMatchedCustomer**](searchEvents_v1_200_response_inner_matched_customer.md)> |  | [optional]
**matched_billable_metrics** | Option<[**Vec<models::BillableMetricForEventsSearch>**](BillableMetricForEventsSearch.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


