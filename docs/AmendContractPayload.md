# AmendContractPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer whose contract is to be amended | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the contract to amend | 
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**total_contract_value** | Option<**f64**> | This field's availability is dependent on your client's configuration. | [optional]
**starting_at** | **String** | inclusive start time for the amendment | 
**commits** | Option<[**Vec<models::CommitInput>**](CommitInput.md)> |  | [optional]
**credits** | Option<[**Vec<models::CreditInput>**](CreditInput.md)> |  | [optional]
**overrides** | Option<[**Vec<models::OverrideInput>**](OverrideInput.md)> |  | [optional]
**discounts** | Option<[**Vec<models::DiscountInput>**](DiscountInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**professional_services** | Option<[**Vec<models::ProServiceInput>**](ProServiceInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**reseller_royalties** | Option<[**Vec<models::ResellerRoyaltyOrUpdateInput>**](ResellerRoyaltyOrUpdateInput.md)> | This field's availability is dependent on your client's configuration. | [optional]
**scheduled_charges** | Option<[**Vec<models::ScheduledChargeInput>**](ScheduledChargeInput.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


