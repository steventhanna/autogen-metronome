# UpsertAvalaraCredentialsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delivery_method_ids** | **Vec<String>** | The delivery method IDs of the billing provider configurations to update, can be found in the response of the `/listConfiguredBillingProviders` endpoint. | 
**avalara_environment** | **String** | The Avalara environment to use (SANDBOX or PRODUCTION). | 
**avalara_username** | **String** | The username for the Avalara account. | 
**avalara_password** | **String** | The password for the Avalara account. | 
**commit_transactions** | Option<**bool**> | Commit transactions if you want Metronome tax calculations used for reporting and tax filings. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


