# ListWebhookDeliveriesV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **chrono::DateTime<chrono::FixedOffset>** | Earliest first attempt to include (inclusive), as an ISO 8601 timestamp. Include a timezone to avoid ambiguity during filtering, e.g. 2026-10-13T00:00:00Z. Must be within the last 30 days and before end_date. | 
**end_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Upper bound on first attempt time (exclusive), as an ISO 8601 timestamp. Include a timezone to avoid ambiguity during filtering. Defaults to the current time. Must be after start_date and no more than 30 days later. Set explicitly and keep fixed when paginating. | [optional]
**filters** | Option<[**models::ListWebhookDeliveriesV1RequestFilters**](ListWebhookDeliveriesV1RequestFilters.md)> |  | [optional]
**limit** | Option<**f64**> | Maximum number of notifications per page. Defaults to 25; must be an integer from 1 to 100. | [optional][default to 25]
**next_page** | Option<**String**> | Pagination cursor from the previous response. Omit for the first page. Pass unchanged in the request body with the same webhook_id, date range, and filters. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


