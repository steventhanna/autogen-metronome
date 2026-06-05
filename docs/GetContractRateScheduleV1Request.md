# GetContractRateScheduleV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer for whose contract to get the rate schedule for. | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract to get the rate schedule for. | 
**at** | Option<**String**> | optional timestamp which overlaps with the returned rate schedule segments. When not specified, the current timestamp will be used. | [optional]
**selectors** | Option<[**Vec<models::GetRatesV1RequestSelectorsInner>**](getRates_v1_request_selectors_inner.md)> | List of rate selectors, rates matching ANY of the selectors will be included in the response. Passing no selectors will result in all rates being returned. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


