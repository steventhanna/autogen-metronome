# ContractV2RevenueSystemConfigurationScheduleInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**revenue_system_configuration** | [**models::CustomerRevenueSystemConfigurationV2**](CustomerRevenueSystemConfigurationV2.md) |  | 
**effective_at** | **chrono::DateTime<chrono::FixedOffset>** | The date this revenue system configuration became or becomes active. | 
**effective_until** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The date this revenue system configuration is superseded by the next entry. Null for the last entry in the schedule. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


