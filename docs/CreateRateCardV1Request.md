# CreateRateCardV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Used only in UI/API. It is not exposed to end customers. | 
**description** | Option<**String**> |  | [optional]
**fiat_credit_type_id** | Option<**uuid::Uuid**> | The Metronome ID of the credit type to associate with the rate card, defaults to USD (cents) if not passed. | [optional]
**credit_type_conversions** | Option<[**Vec<models::CreateRateCardV1RequestCreditTypeConversionsInner>**](CreateRateCardV1RequestCreditTypeConversionsInner.md)> | Required when using custom pricing units in rates. | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](GetRateCardV1200ResponseDataAliasesInner.md)> | Reference this alias when creating a contract. If the same alias is assigned to multiple rate cards, it will reference the rate card to which it was most recently assigned. It is not exposed to end customers. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


