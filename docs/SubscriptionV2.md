# SubscriptionV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**uuid::Uuid**> |  | [optional]
**subscription_rate** | [**models::SubscriptionRate**](SubscriptionRate.md) |  | 
**name** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**collection_schedule** | **CollectionSchedule** |  (enum: ADVANCE, ARREARS, advance, arrears) | 
**proration** | [**models::SubscriptionProrationV2**](SubscriptionProrationV2.md) |  | 
**quantity_schedule** | [**Vec<models::SubscriptionQuantitySchedule>**](SubscriptionQuantitySchedule.md) | List of quantity schedule items for the subscription. Only includes the current quantity and future quantity changes. | 
**billing_periods** | [**models::SubscriptionBillingPeriods**](SubscriptionBillingPeriods.md) |  | 
**quantity_management_mode** | **QuantityManagementMode** | Determines how the subscription's quantity is controlled. Defaults to QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified directly on the subscription. `initial_quantity` must be provided with this option. Compatible with recurring commits/credits that use POOLED allocation. **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add user_123) to increment and decrement a subscription quantity, rather than directly providing the quantity. You must use a **SEAT_BASED** subscription to use a linked recurring credit with an allocation per seat. `seat_config` must be provided with this option. (enum: SEAT_BASED, seat_based, QUANTITY_ONLY, quantity_only) | 
**seat_config** | Option<[**models::SubscriptionSeatConfig**](SubscriptionSeatConfig.md)> |  | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**fiat_credit_type_id** | Option<**uuid::Uuid**> |  | [optional]
**billing_cycle_config** | Option<[**models::SubscriptionBillingCycleConfig**](SubscriptionBillingCycleConfig.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**product_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**status** | Option<**Status**> |  (enum: NOT_STARTED, INCOMPLETE, ACTIVE, UNPAID, ENDED) | [optional]
**paid_quantity** | Option<**f64**> |  | [optional]
**payment_gate_config** | Option<[**models::SubscriptionPaymentGateConfig**](SubscriptionPaymentGateConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


