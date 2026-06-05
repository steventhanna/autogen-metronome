# GetCustomerAlertPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | The Metronome ID of the customer | 
**alert_id** | [**uuid::Uuid**](uuid::Uuid.md) | The Metronome ID of the threshold notification | 
**plans_or_contracts** | Option<**String**> | When parallel threshold notifications are enabled during migration, this flag denotes whether to fetch notifications for plans or contracts. | [optional]
**group_values** | Option<[**Vec<models::GroupKeyFilterType>**](GroupKeyFilterType.md)> | Only present for `spend_threshold_reached` notifications. Retrieve the notification for a specific group key-value pair. | [optional]
**seat_filter** | Option<[**models::GetCustomerAlertPayloadSeatFilter**](GetCustomerAlertPayload_seat_filter.md)> |  | [optional]
**alert_specifiers** | Option<[**Vec<models::AlertSpecifierFilter>**](AlertSpecifierFilter.md)> | Can be used with only `low_remaining_contract_credit_and_commit_balance_reached` notifications. Used to filter the alert by the custom field key-value pair. | [optional]
**custom_field_filters** | Option<[**Vec<models::CustomFieldFilterType>**](CustomFieldFilterType.md)> | Used to filter the alert by the custom field key-value pair. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


