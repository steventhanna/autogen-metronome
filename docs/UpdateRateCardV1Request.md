# UpdateRateCardV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_card_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the rate card to update | 
**name** | Option<**String**> | Used only in UI/API. It is not exposed to end customers. | [optional]
**description** | Option<**String**> |  | [optional]
**aliases** | Option<[**Vec<models::GetRateCardV1200ResponseDataAliasesInner>**](getRateCard_v1_200_response_data_aliases_inner.md)> | Reference this alias when creating a contract. If the same alias is assigned to multiple rate cards, it will reference the rate card to which it was most recently assigned. It is not exposed to end customers. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


