# GetPackageV1200ResponseDataSubscriptionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**subscription_rate** | [**models::GetContractV1200ResponseDataSubscriptionsInnerSubscriptionRate**](getContract_v1_200_response_data_subscriptions_inner_subscription_rate.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**collection_schedule** | **String** |  | 
**proration** | [**models::GetContractV1200ResponseDataSubscriptionsInnerProration**](getContract_v1_200_response_data_subscriptions_inner_proration.md) |  | 
**initial_quantity** | Option<**f64**> |  | [optional]
**quantity_management_mode** | Option<**String**> | Determines how the subscription's quantity is controlled. Defaults to QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified directly on the subscription. `initial_quantity` must be provided with this option. Compatible with recurring commits/credits that use POOLED allocation. **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add user_123) to increment and decrement a subscription quantity, rather than directly providing the quantity. You must use a SEAT_BASED subscription to use a linked recurring credit with an allocation per seat. `seat_config` must be provided with this option. | [optional]
**seat_config** | Option<[**models::GetContractV1200ResponseDataSubscriptionsInnerSeatConfig**](getContract_v1_200_response_data_subscriptions_inner_seat_config.md)> |  | [optional]
**starting_at_offset** | Option<[**models::CreatePackageV1RequestDuration**](createPackage_v1_request_duration.md)> |  | [optional]
**duration** | Option<[**models::CreatePackageV1RequestDuration**](createPackage_v1_request_duration.md)> |  | [optional]
**fiat_credit_type_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**billing_cycle_config** | Option<[**models::GetPackageV1200ResponseDataSubscriptionsInnerBillingCycleConfig**](getPackage_v1_200_response_data_subscriptions_inner_billing_cycle_config.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


