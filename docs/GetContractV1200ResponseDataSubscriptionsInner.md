# GetContractV1200ResponseDataSubscriptionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**uuid::Uuid**> |  | [optional]
**subscription_rate** | [**models::GetContractV1200ResponseDataSubscriptionsInnerSubscriptionRate**](GetContractV1200ResponseDataSubscriptionsInnerSubscriptionRate.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**collection_schedule** | **CollectionSchedule** |  (enum: ADVANCE, ARREARS, advance, arrears) | 
**proration** | [**models::GetContractV1200ResponseDataSubscriptionsInnerProration**](GetContractV1200ResponseDataSubscriptionsInnerProration.md) |  | 
**quantity_schedule** | [**Vec<models::GetContractV1200ResponseDataSubscriptionsInnerQuantityScheduleInner>**](GetContractV1200ResponseDataSubscriptionsInnerQuantityScheduleInner.md) | List of quantity schedule items for the subscription. Only includes the current quantity and future quantity changes. | 
**billing_periods** | [**models::GetContractV1200ResponseDataSubscriptionsInnerBillingPeriods**](GetContractV1200ResponseDataSubscriptionsInnerBillingPeriods.md) |  | 
**quantity_management_mode** | **QuantityManagementMode** | Determines how the subscription's quantity is controlled. Defaults to QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified directly on the subscription. `initial_quantity` must be provided with this option. Compatible with recurring commits/credits that use POOLED allocation. **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add user_123) to increment and decrement a subscription quantity, rather than directly providing the quantity. You must use a **SEAT_BASED** subscription to use a linked recurring credit with an allocation per seat. `seat_config` must be provided with this option. (enum: SEAT_BASED, seat_based, QUANTITY_ONLY, quantity_only) | 
**seat_config** | Option<[**models::GetContractV1200ResponseDataSubscriptionsInnerSeatConfig**](GetContractV1200ResponseDataSubscriptionsInnerSeatConfig.md)> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**fiat_credit_type_id** | Option<**uuid::Uuid**> |  | [optional]
**billing_cycle_config** | Option<[**models::GetContractV1200ResponseDataSubscriptionsInnerBillingCycleConfig**](GetContractV1200ResponseDataSubscriptionsInnerBillingCycleConfig.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**product_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields from the subscription product referenced by `subscription_rate.product`. These are distinct from the subscription instance's `custom_fields`. | [optional]
**status** | Option<**Status**> |  (enum: NOT_STARTED, INCOMPLETE, ACTIVE, UNPAID, ENDED) | [optional]
**paid_quantity** | Option<**f64**> |  | [optional]
**payment_gate_config** | Option<[**models::GetContractV1200ResponseDataSubscriptionsInnerPaymentGateConfig**](GetContractV1200ResponseDataSubscriptionsInnerPaymentGateConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


