# ListContractsNamedSchedulesV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the customer to list contract named schedules for | 
**contract_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | Optional ID of a contract to scope the results to a single contract | [optional]
**schedule_name** | Option<**String**> | Optional filter to scope the results to a single schedule name | [optional]
**properties** | Option<**std::collections::HashMap<String, String>**> | Optional key-value filters. A schedule matches when it contains at least this subset of properties. | [optional]
**covering_date** | Option<**String**> | If provided, result contains at most one segment covering this date for each schedule. | [optional]
**limit** | Option<**i32**> | Maximum number of named schedules to return. | [optional]
**next_page** | Option<**String**> | Cursor for pagination. Use the value from a previous response's next_page. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


