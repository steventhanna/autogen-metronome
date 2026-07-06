# GetRateCardV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**name** | **String** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**description** | Option<**String**> |  | [optional]
**fiat_credit_type** | Option<[**models::ChargeSeatsV1200ResponseCreditType**](ChargeSeatsV1200ResponseCreditType.md)> |  | [optional]
**credit_type_conversions** | Option<[**Vec<models::GetRateCardV1200ResponseDataCreditTypeConversionsInner>**](GetRateCardV1200ResponseDataCreditTypeConversionsInner.md)> |  | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](GetRateCardV1200ResponseDataAliasesInner.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


