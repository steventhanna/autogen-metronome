# UpdateSubscriptionInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscription_id** | **uuid::Uuid** |  | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> |  | [optional]
**quantity_management_mode_update** | Option<[**models::UpdateSubscriptionInputQuantityManagementModeUpdate**](UpdateSubscriptionInputQuantityManagementModeUpdate.md)> |  | [optional]
**quantity_updates** | Option<[**Vec<models::UpdateSubscriptionInputQuantityUpdatesInner>**](UpdateSubscriptionInputQuantityUpdatesInner.md)> | Quantity changes are applied on the effective date based on the order which they are sent. For example, if I scheduled the quantity to be 12 on May 21 and then scheduled a quantity delta change of -1, the result from that day would be 11. | [optional]
**seat_updates** | Option<[**models::SubscriptionSeatUpdateInput**](SubscriptionSeatUpdateInput.md)> |  | [optional]
**proration_rounding** | Option<[**models::NullableProrationRoundingConfig**](NullableProrationRoundingConfig.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


