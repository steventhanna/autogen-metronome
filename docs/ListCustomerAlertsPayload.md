# ListCustomerAlertsPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | The Metronome ID of the customer | 
**alert_statuses** | Option<**Vec<AlertStatuses>**> | Optionally filter by threshold notification status. If absent, only enabled notifications will be returned. (enum: enabled, disabled, archived, ENABLED, DISABLED, ARCHIVED, Enabled, Disabled, Archived) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


