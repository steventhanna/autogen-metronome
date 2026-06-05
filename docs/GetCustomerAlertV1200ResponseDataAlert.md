# GetCustomerAlertV1200ResponseDataAlert

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | the Metronome ID of the threshold notification | 
**name** | **String** | Name of the threshold notification | 
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**r#type** | **String** | Type of the threshold notification | 
**status** | **String** | Status of the threshold notification | 
**credit_type** | Option<[**models::GetCustomerAlertV1200ResponseDataAlertCreditType**](getCustomerAlert_v1_200_response_data_alert_credit_type.md)> |  | [optional]
**threshold** | **f64** | Threshold value of the notification policy | 
**updated_at** | **String** | Timestamp for when the threshold notification was last updated | 
**credit_grant_type_filters** | Option<**Vec<String>**> | An array of strings, representing a way to filter the credit grant this threshold notification applies to, by looking at the credit_grant_type field on the credit grant. This field is only defined for CreditPercentage and CreditBalance notifications | [optional]
**custom_field_filters** | Option<[**Vec<models::CreateAlertV1RequestCustomFieldFiltersInner>**](createAlert_v1_request_custom_field_filters_inner.md)> | A list of custom field filters for notification types that support advanced filtering | [optional]
**group_key_filter** | Option<[**models::GetCustomerAlertV1200ResponseDataAlertGroupKeyFilter**](getCustomerAlert_v1_200_response_data_alert_group_key_filter.md)> |  | [optional]
**invoice_types_filter** | Option<**Vec<String>**> | Only supported for invoice_total_reached threshold notifications. A list of invoice types to evaluate. | [optional]
**group_values** | Option<[**Vec<models::CreateAlertV1RequestGroupValuesInner>**](createAlert_v1_request_group_values_inner.md)> | Only present for `spend_threshold_reached` notifications. Scope notification to a specific group key on individual line items. | [optional]
**seat_filter** | Option<[**models::GetCustomerAlertV1200ResponseDataAlertSeatFilter**](getCustomerAlert_v1_200_response_data_alert_seat_filter.md)> |  | [optional]
**alert_specifiers** | Option<[**Vec<models::CreateAlertV1RequestAlertSpecifiersInner>**](createAlert_v1_request_alert_specifiers_inner.md)> | Present for `low_remaining_contract_credit_and_commit_balance_reached` notifications. The filters that define the balances that are considered when evaluating the alert. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


