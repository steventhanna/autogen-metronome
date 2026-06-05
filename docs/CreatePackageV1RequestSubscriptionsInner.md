# CreatePackageV1RequestSubscriptionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription_rate** | [**models::CreateContractV1RequestSubscriptionsInnerSubscriptionRate**](createContract_v1_request_subscriptions_inner_subscription_rate.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**collection_schedule** | **String** |  | 
**proration** | [**models::CreateContractV1RequestSubscriptionsInnerProration**](createContract_v1_request_subscriptions_inner_proration.md) |  | 
**initial_quantity** | Option<**f64**> | The initial quantity for the subscription. It must be non-negative value. Required if quantity_management_mode is QUANTITY_ONLY. | [optional]
**starting_at_offset** | Option<[**models::CreatePackageV1RequestSubscriptionsInnerStartingAtOffset**](createPackage_v1_request_subscriptions_inner_starting_at_offset.md)> |  | [optional]
**duration** | Option<[**models::CreatePackageV1RequestSubscriptionsInnerDuration**](createPackage_v1_request_subscriptions_inner_duration.md)> |  | [optional]
**temporary_id** | Option<**String**> | A temporary ID used to reference the subscription in recurring commit/credit subscription configs created within the same payload. | [optional]
**quantity_management_mode** | Option<**String**> | Determines how the subscription's quantity is controlled. Defaults to QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified directly on the subscription. `initial_quantity` must be provided with this option. Compatible with recurring commits/credits that use POOLED allocation. **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add user_123) to increment and decrement a subscription quantity, rather than directly providing the quantity. You must use a **SEAT_BASED** subscription to use a linked recurring credit with an allocation per seat. `seat_config` must be provided with this option. | [optional]
**seat_config** | Option<[**models::CreatePackageV1RequestSubscriptionsInnerSeatConfig**](createPackage_v1_request_subscriptions_inner_seat_config.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**billing_cycle_config** | Option<[**models::CreatePackageV1RequestSubscriptionsInnerBillingCycleConfig**](createPackage_v1_request_subscriptions_inner_billing_cycle_config.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


