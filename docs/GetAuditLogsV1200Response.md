# GetAuditLogsV1200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Vec<models::GetAuditLogsV1200ResponseDataInner>**](GetAuditLogsV1200ResponseDataInner.md) |  | 
**next_page** | Option<**String**> | The next_page parameter is always returned to support ongoing log retrieval. It enables continuous querying, even when some requests return no new data. Save the next_page token from each response and use it for future requests to ensure no logs are missed. This setup is ideal for regular updates via automated processes, like cron jobs, to fetch logs continuously as they become available. When you receive an empty data array, it indicates a temporary absence of new logs, but subsequent requests might return new data. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


