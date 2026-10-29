# ListWebhookDeliveriesV1RequestFilters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_ids** | Option<**Vec<uuid::Uuid>**> | Filter by customer IDs. Excludes notifications with a null customer_id. | [optional]
**notification_types** | Option<**Vec<String>**> | Filter by exact notification types, such as invoice.finalized or alerts.spend_threshold_reached. | [optional]
**notification_ids** | Option<**Vec<String>**> | Filter by notification configuration IDs using notification_id values from delivery responses. Excludes notifications with a null notification_id. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


