# GetCustomerAlertV1200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_status** | Option<**CustomerStatus**> | The status of the threshold notification. If the notification is archived, null will be returned. (enum: ok, in_alarm, evaluating) | 
**triggered_by** | Option<**String**> | If present, indicates the reason the threshold notification was triggered. | [optional]
**alert** | [**models::GetCustomerAlertV1200ResponseDataAlert**](GetCustomerAlertV1200ResponseDataAlert.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


