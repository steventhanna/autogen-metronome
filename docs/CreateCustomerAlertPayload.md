# CreateCustomerAlertPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_type** | **String** | Type of the threshold notification | 
**name** | **String** | Name of the threshold notification | 
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error. | [optional]
**threshold** | **f64** | Threshold value of the notification policy.  Depending upon the notification type, this number may represent a financial amount, the days remaining, or a percentage reached. | 
**credit_type_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | ID of the credit's currency, defaults to USD. If the specific notification type requires a pricing unit/currency, find the ID in the [Metronome app](https://app.metronome.com/offering/pricing-units). | [optional]
**customer_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | If provided, will create this threshold notification for this specific customer. To create a notification for all customers, do not specify a `customer_id`. | [optional]
**billable_metric_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | For threshold notifications of type `usage_threshold_reached`, specifies which billable metric to track the usage for. | [optional]
**credit_grant_type_filters** | Option<**Vec<String>**> | An array of strings, representing a way to filter the credit grant this threshold notification applies to, by looking at the credit_grant_type field on the credit grant. This field is only defined for CreditPercentage and CreditBalance notifications | [optional]
**evaluate_on_create** | Option<**bool**> | If true, the threshold notification will evaluate immediately on customers that already meet the notification threshold. If false, it will only evaluate on future customers that trigger the threshold. Defaults to true. | [optional]
**custom_field_filters** | Option<[**Vec<models::CustomFieldFilterType>**](CustomFieldFilterType.md)> | A list of custom field filters for threshold notification types that support advanced filtering. Only present for contract invoices. | [optional]
**invoice_types_filter** | Option<**Vec<String>**> | Only supported for invoice_total_reached threshold notifications. A list of invoice types to evaluate. | [optional]
**group_values** | Option<[**Vec<models::GroupValueFilterType>**](GroupValueFilterType.md)> | Only present for `spend_threshold_reached` notifications. Scope notification to a specific group key on individual line items. | [optional]
**seat_filter** | Option<[**models::CreateCustomerAlertPayloadSeatFilter**](CreateCustomerAlertPayload_seat_filter.md)> |  | [optional]
**alert_specifiers** | Option<[**Vec<models::AlertSpecifier>**](AlertSpecifier.md)> | Can be used with only `low_remaining_contract_credit_and_commit_balance_reached` notifications. Defines the balances that are considered when evaluating the alert. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


