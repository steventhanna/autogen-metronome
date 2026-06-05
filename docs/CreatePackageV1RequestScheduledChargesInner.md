# CreatePackageV1RequestScheduledChargesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**name** | Option<**String**> | displayed on invoices | [optional]
**schedule** | [**models::CreatePackageV1RequestScheduledChargesInnerSchedule**](createPackage_v1_request_scheduled_charges_inner_schedule.md) |  | 
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


