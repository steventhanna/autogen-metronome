# GetCustomerAlertV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | The Metronome ID of the customer | 
**alert_id** | [**uuid::Uuid**](uuid::Uuid.md) | The Metronome ID of the threshold notification | 
**plans_or_contracts** | Option<**String**> | When parallel threshold notifications are enabled during migration, this flag denotes whether to fetch notifications for plans or contracts. | [optional]
**group_values** | Option<[**Vec<models::GetCustomerAlertV1RequestGroupValuesInner>**](getCustomerAlert_v1_request_group_values_inner.md)> | Only present for `spend_threshold_reached` notifications. Retrieve the notification for a specific group key-value pair. | [optional]
**seat_filter** | Option<[**models::GetCustomerAlertV1RequestSeatFilter**](getCustomerAlert_v1_request_seat_filter.md)> |  | [optional]
**alert_specifiers** | Option<[**Vec<models::GetCustomerAlertV1RequestAlertSpecifiersInner>**](getCustomerAlert_v1_request_alert_specifiers_inner.md)> | Can be used with only `low_remaining_contract_credit_and_commit_balance_reached` notifications. Used to filter the alert by the custom field key-value pair. | [optional]
**custom_field_filters** | Option<[**Vec<models::CreateAlertV1RequestCustomFieldFiltersInner>**](createAlert_v1_request_custom_field_filters_inner.md)> | Used to filter the alert by the custom field key-value pair. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


