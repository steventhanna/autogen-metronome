# RechargeSettingsStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | the status of the recharge | 
**stripe_error_code** | Option<**String**> | the error code returned by Stripe if the reason why the recharge failed | [optional]
**last_credit_grant** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | the Metronome ID of the last credit grant that was created by this recharge | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


