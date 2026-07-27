# ContractV2BillingProviderConfigurationScheduleInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_provider_configuration** | [**models::CustomerBillingProviderConfiguration**](CustomerBillingProviderConfiguration.md) |  | 
**effective_at** | **chrono::DateTime<chrono::FixedOffset>** | The date this billing provider configuration became or becomes active. | 
**effective_until** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The date this billing provider configuration is superseded by the next entry. Null for the last entry in the schedule. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


