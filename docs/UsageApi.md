# \UsageApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_paged_usage_v1**](UsageApi.md#get_paged_usage_v1) | **POST** /v1/usage/groups | Get usage data with paginated groupings
[**get_usage_batch_v1**](UsageApi.md#get_usage_batch_v1) | **POST** /v1/usage | Get batched usage data
[**ingest_v1**](UsageApi.md#ingest_v1) | **POST** /v1/ingest | Ingest events
[**search_events_v1**](UsageApi.md#search_events_v1) | **POST** /v1/events/search | Search events



## get_paged_usage_v1

> models::GetPagedUsageV1200Response get_paged_usage_v1(limit, next_page, get_paged_usage_v1_request)
Get usage data with paginated groupings

Retrieve granular usage data for a specific customer and billable metric, with the ability to break down usage by custom grouping dimensions. This endpoint enables deep usage analytics by segmenting data across attributes like region, user, model type, or any custom dimension defined in your billable metrics.  ### Use this endpoint to: - Analyze usage patterns broken down by specific attributes (region, user, department, etc.) - Build detailed usage dashboards with dimensional filtering - Identify high-usage segments for optimization opportunities  ### Request parameters Use [`group_key`](#body-group-key) and [`group_filters`](#body-group-filters) to group by one or more dimensions. This is required for compound group keys and recommended for all new integrations: ```json {   \"group_key\": [\"region\", \"team\"],   \"group_filters\": {     \"region\": [\"US-East\", \"US-West\"]   } } ``` Important: For compound group keys, you must pass the complete set of keys that make up the compound key. Partial key combinations are not supported. For example, if your billable metric has a compound group key [region, team, environment], you must pass all three keys in group_key—you cannot pass just `[region]` or `[region, team]`.  ### Key response fields: An array of `PagedUsageAggregate` objects containing: - `starting_on` and `ending_before`: Time window boundaries - `group`: Object mapping group keys to their values   - For simple groups, this will be a map with a single key-value pair (e.g., `{\"region\": \"US-East\"}`)   - For compound groups, this will be a map with multiple key-value pairs (e.g., `{\"region\": \"US-East\", \"team\": \"engineering\"}`) - `value`: Aggregated usage for this group and time window - `next_page`: Pagination cursor for large datasets  ### Usage guidelines: - Required parameters: Must specify `customer_id`, `billable_metric_id`, and `window_size` - Time windows: Set `window_size` to hour, day, or none for different granularities - Group filtering: Use `group_key` and `group_filters` to specify groups and group filters - Limits: When using compound group keys (2+ keys in `group_key`), the default and max limit is 100 - Pagination: Use limit and `next_page` for large result sets - Null handling: Group values may be null for events missing the group key property 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**get_paged_usage_v1_request** | Option<[**GetPagedUsageV1Request**](GetPagedUsageV1Request.md)> | The usage query to run |  |

### Return type

[**models::GetPagedUsageV1200Response**](getPagedUsage_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_usage_batch_v1

> models::GetUsageBatchV1200Response get_usage_batch_v1(next_page, get_usage_batch_v1_request)
Get batched usage data

Retrieve aggregated usage data across multiple customers and billable metrics in a single query. This batch endpoint enables you to fetch usage patterns at scale, broken down by time windows, making it ideal for building analytics dashboards, generating reports, and monitoring platform-wide usage trends.  ### Use this endpoint to: - Generate platform-wide usage reports for internal teams - Monitor aggregate usage trends across your entire customer base - Create comparative usage analyses between customers or time periods - Support capacity planning with historical usage patterns  ### Key response fields: An array of `UsageBatchAggregate` objects containing:  - `customer_id`: The customer this usage belongs to - `billable_metric_id` and `billable_metric_name`: What was measured - `start_timestamp` and `end_timestamp`: Time window for this data point - `value`: Aggregated usage amount for the period - `groups` (optional): Usage broken down by group keys with values - `next_page`: Pagination cursor for large result sets  ### Usage guidelines: - Time windows: Set `window_size` to `hour`, `day`, or `none` (entire period) - Required parameters: Must specify `starting_on`, `ending_before`, and `window_size` - Filtering options:   - `customer_ids`: Limit to specific customers (omit for all customers)   - `billable_metrics`: Limit to specific metrics (omit for all metrics) - Pagination: Use `next_page` cursor to retrieve large datasets - Null values: Group values may be null when no usage matches that group 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**get_usage_batch_v1_request** | Option<[**GetUsageBatchV1Request**](GetUsageBatchV1Request.md)> | The usage query to run |  |

### Return type

[**models::GetUsageBatchV1200Response**](getUsageBatch_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## ingest_v1

> ingest_v1(ingest_v1_request_inner)
Ingest events

The ingest endpoint is the primary method for sending usage events to Metronome, serving as the foundation for all billing calculations in your usage-based pricing model. This high-throughput endpoint is designed for real-time streaming ingestion, supports backdating 34 days, and is built to handle mission-critical usage data with enterprise-grade reliability. Metronome supports 100,000 events per second without requiring pre-aggregation or rollups and can scale up from there. See the [Send usage events](/guides/events/send-usage-events) guide to learn more about usage events.  ### Use this endpoint to: Create a customer usage pipeline into Metronome that drives billable metrics, credit drawdown, and invoicing. Track customer behavior, resource consumption, and feature usage  ### What happens when you send events: - Events are validated and processed in real-time - Events are matched to customers using customer IDs or customer ingest aliases - Events are matched to billable metrics and are immediately available for usage and spend calculations  ### Usage guidelines: - Historical events can be backdated up to 34 days and will immediately impact live customer spend - Duplicate events are automatically detected and ignored (34-day deduplication window)  #### Event structure: Usage events are simple JSON objects designed for flexibility and ease of integration: ```json {   \"transaction_id\": \"2021-01-01T00:00:00Z_cluster42\",   \"customer_id\": \"team@example.com\",   \"event_type\": \"api_request\",   \"timestamp\": \"2021-01-01T00:00:00Z\",   \"properties\": {     \"endpoint\": \"/v1/users\",     \"method\": \"POST\",     \"response_time_ms\": 45,     \"region\": \"us-west-2\"   } } ```  Learn more about [usage event structure definitions](/guides/events/design-usage-events).  #### Transaction ID   The transaction_id serves as your idempotency key, ensuring events are processed exactly once. Metronome maintains a 34-day deduplication window - significantly longer than typical 12-hour windows - enabling robust backfill scenarios without duplicate billing.   - Best Practices:     - Use UUIDs for one-time events: uuid4()     - For heartbeat events, use deterministic IDs     - Include enough context to avoid collisions across different event sources  #### Customer ID Identifies which customer should be billed for this usage. Supports two identification methods:   - Metronome Customer ID: The UUID returned when creating a customer   - Ingest Alias: Your system's identifier (email, account number, etc.)   Ingest aliases enable seamless integration without requiring ID mapping, and customers can have multiple aliases for flexibility.  #### Event Type: Categorizes the event type for billable metric matching. Choose descriptive names that aligns with the product surface area.  #### Properties: Flexible metadata also used to match billable metrics or to be used to serve as group keys to create multiple pricing dimensions or breakdown costs by novel properties for end customers or internal finance teams measuring underlying COGs. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ingest_v1_request_inner** | Option<[**Vec<models::IngestV1RequestInner>**](IngestV1RequestInner.md)> |  |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_events_v1

> Vec<models::SearchEventsV1200ResponseInner> search_events_v1(search_events_v1_request)
Search events

This endpoint retrieves events by transaction ID for events that occurred within the last 34 days. It is specifically designed for sampling-based testing workflows to detect revenue leakage. The Event Search API provides a critical observability tool that validates the integrity of your usage pipeline by allowing you to sample raw events and verify their matching against active billable metrics.   Why event observability matters for revenue leakage: Silent revenue loss occurs when events are dropped, delayed, or fail to match billable metrics due to: - Upstream system failures - Event format changes - Misconfigured billable metrics  ### Use this endpoint to: - Sample raw events and validate they match the expected billable metrics - Build custom leakage detection alerts to prevent silent revenue loss - Verify event processing accuracy during system changes or metric updates - Debug event matching issues in real-time  ### Key response fields: - Complete event details including transaction ID, customer ID, and properties - Matched Metronome customer (if any) - Matched billable metric information (if any) - Processing status and duplicate detection flags  ### Usage guidelines: ⚠️ Important: This endpoint is heavily rate limited and designed for sampling workflows only. Do not use this endpoint to check every event in your system. Instead, implement a sampling strategy to randomly validate a subset of events for observability purposes. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**search_events_v1_request** | Option<[**SearchEventsV1Request**](SearchEventsV1Request.md)> | Search events request |  |

### Return type

[**Vec<models::SearchEventsV1200ResponseInner>**](searchEvents_v1_200_response_inner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

