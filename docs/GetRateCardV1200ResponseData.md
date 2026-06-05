# GetRateCardV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | **String** |  | 
**created_at** | **String** |  | 
**created_by** | **String** |  | 
**description** | Option<**String**> |  | [optional]
**fiat_credit_type** | Option<[**models::ChargeSeatsV1200ResponseCreditType**](chargeSeats_v1_200_response_credit_type.md)> |  | [optional]
**credit_type_conversions** | Option<[**Vec<models::GetRateCardV1200ResponseDataCreditTypeConversionsInner>**](getRateCard_v1_200_response_data_credit_type_conversions_inner.md)> |  | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](getRateCard_v1_200_response_data_aliases_inner.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


