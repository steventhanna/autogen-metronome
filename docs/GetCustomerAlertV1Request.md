# GetCustomerAlertV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | The Metronome ID of the customer | 
**alert_id** | **uuid::Uuid** | The Metronome ID of the threshold notification | 
**plans_or_contracts** | Option<**PlansOrContracts**> | When parallel threshold notifications are enabled during migration, this flag denotes whether to fetch notifications for plans or contracts. (enum: PLANS, CONTRACTS) | [optional]
**group_values** | Option<[**Vec<models::GetCustomerAlertV1RequestGroupValuesInner>**](GetCustomerAlertV1RequestGroupValuesInner.md)> | Only present for `spend_threshold_reached` notifications. Retrieve the notification for a specific group key-value pair. | [optional]
**seat_filter** | Option<[**models::GetCustomerAlertV1RequestSeatFilter**](GetCustomerAlertV1RequestSeatFilter.md)> |  | [optional]
**alert_specifiers** | Option<[**Vec<models::GetCustomerAlertV1RequestAlertSpecifiersInner>**](GetCustomerAlertV1RequestAlertSpecifiersInner.md)> | Can be used only with `low_remaining_contract_credit_and_commit_balance_reached` and `low_remaining_contract_credit_and_commit_percentage_reached` notifications. Used to filter the alert by the custom field key-value pair. | [optional]
**custom_field_filters** | Option<[**Vec<models::CreateAlertV1RequestCustomFieldFiltersInner>**](CreateAlertV1RequestCustomFieldFiltersInner.md)> | Used to filter the alert by the custom field key-value pair. | [optional]
**webhook_notification_id** | Option<**String**> | Indicates that this API request was triggered by a webhook notification with the provided ID. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


