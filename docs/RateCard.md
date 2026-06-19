# RateCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**name** | **String** |  | 
**created_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**created_by** | **String** |  | 
**description** | Option<**String**> |  | [optional]
**fiat_credit_type** | Option<[**models::CreditType**](CreditType.md)> |  | [optional]
**credit_type_conversions** | Option<[**Vec<models::CreditTypeConversion>**](CreditTypeConversion.md)> |  | [optional]
**aliases** | Option<[**Vec<models::RateCardAlias>**](RateCardAlias.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


