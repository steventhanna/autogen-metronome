# CustomerRevenueSystemConfigurationLookup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**revenue_system_configuration_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The Metronome ID of the revenue system configuration. Use when a customer has multiple configurations with the same provider and delivery method. Otherwise, specify the provider and delivery_method. | [optional]
**provider** | Option<[**models::RevenueSystemProviderType**](RevenueSystemProviderType.md)> |  | [optional]
**delivery_method** | Option<[**models::RevenueSystemDeliveryMethodType**](RevenueSystemDeliveryMethodType.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


