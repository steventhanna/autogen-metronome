# GetContractV2200ResponseDataSubscriptionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**subscription_rate** | [**models::GetContractV1200ResponseDataSubscriptionsInnerSubscriptionRate**](getContract_v1_200_response_data_subscriptions_inner_subscription_rate.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**collection_schedule** | **String** |  | 
**proration** | [**models::GetContractV2200ResponseDataSubscriptionsInnerProration**](getContract_v2_200_response_data_subscriptions_inner_proration.md) |  | 
**quantity_schedule** | [**Vec<models::GetContractV1200ResponseDataSubscriptionsInnerQuantityScheduleInner>**](getContract_v1_200_response_data_subscriptions_inner_quantity_schedule_inner.md) | List of quantity schedule items for the subscription. Only includes the current quantity and future quantity changes. | 
**billing_periods** | [**models::GetContractV1200ResponseDataSubscriptionsInnerBillingPeriods**](getContract_v1_200_response_data_subscriptions_inner_billing_periods.md) |  | 
**quantity_management_mode** | **String** | Determines how the subscription's quantity is controlled. Defaults to QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified directly on the subscription. `initial_quantity` must be provided with this option. Compatible with recurring commits/credits that use POOLED allocation. **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add user_123) to increment and decrement a subscription quantity, rather than directly providing the quantity. You must use a **SEAT_BASED** subscription to use a linked recurring credit with an allocation per seat. `seat_config` must be provided with this option. | 
**seat_config** | Option<[**models::GetContractV1200ResponseDataSubscriptionsInnerSeatConfig**](getContract_v1_200_response_data_subscriptions_inner_seat_config.md)> |  | [optional]
**starting_at** | **String** |  | 
**ending_before** | Option<**String**> |  | [optional]
**fiat_credit_type_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**billing_cycle_config** | Option<[**models::GetContractV1200ResponseDataSubscriptionsInnerBillingCycleConfig**](getContract_v1_200_response_data_subscriptions_inner_billing_cycle_config.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


