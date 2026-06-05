# CreateContractV1RequestRevenueSystemConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**revenue_system_configuration_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The Metronome ID of the revenue system configuration. Use when a customer has multiple configurations with the same provider and delivery method. Otherwise, specify the provider and delivery_method. | [optional]
**provider** | Option<**String**> | The system that is providing services for revenue recognition. Do not specify if using revenue_system_configuration_id. | [optional]
**delivery_method** | Option<**String**> | How revenue recognition records should be delivered to the revenue system. Do not specify if using revenue_system_configuration_id. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


