# \BillableMetricsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_billable_metric_v1**](BillableMetricsApi.md#archive_billable_metric_v1) | **POST** /v1/billable-metrics/archive | Archive a billable metric
[**create_billable_metric_v1_v1**](BillableMetricsApi.md#create_billable_metric_v1_v1) | **POST** /v1/billable-metrics/create | Create a billable metric
[**get_billable_metric_v1**](BillableMetricsApi.md#get_billable_metric_v1) | **GET** /v1/billable-metrics/{billable_metric_id} | Get a billable metric
[**list_all_billable_metrics_v1**](BillableMetricsApi.md#list_all_billable_metrics_v1) | **GET** /v1/billable-metrics | List all billable metrics
[**list_billable_metrics_v1**](BillableMetricsApi.md#list_billable_metrics_v1) | **GET** /v1/customers/{customer_id}/billable-metrics | Get billable metrics for a customer
[**update_billable_metric_v1**](BillableMetricsApi.md#update_billable_metric_v1) | **PUT** /v1/billable-metrics/{billable_metric_id} | Update a billable metric



## archive_billable_metric_v1

> models::ArchiveAlertV1200Response archive_billable_metric_v1(archive_alert_v1200_response_data)
Archive a billable metric

Use this endpoint to retire billable metrics that are no longer used. After a billable metric is archived, that billable metric can no longer be used in any new Products to define how that product should be metered. If you archive a billable metric that is already associated with a Product, the Product will continue to function as usual, metering based on the definition of the archived billable metric.   Archived billable metrics will be returned on the `getBillableMetric` and `listBillableMetrics` endpoints with a populated `archived_at` field. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | The ID of the billable metric to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_billable_metric_v1_v1

> models::ArchiveAlertV1200Response create_billable_metric_v1_v1(create_billable_metric_v1_v1_request)
Create a billable metric

Create billable metrics programmatically with this endpoint—an essential step in configuring your pricing and packaging in Metronome.  A billable metric is a customizable query that filters and aggregates events from your event stream. These metrics are continuously tracked as usage data enters Metronome through the ingestion pipeline. The ingestion process transforms raw usage data into actionable pricing metrics, enabling accurate metering and billing for your products.  ### Use this endpoint to:  - Create individual or multiple billable metrics as part of a setup workflow. - Automate the entire pricing configuration process, from metric creation to customer contract setup. - Define metrics using either standard filtering/aggregation or a custom SQL query.  ### Key response fields:  - The ID of the billable metric that was created - The created billable metric will be available to be used in Products, usage endpoints, and alerts.   ### Usage guidelines:  - Metrics defined using standard filtering and aggregation are Streaming billable metrics, which have been optimized for ultra low latency and high throughput workflows.  - Use SQL billable metrics if you require more flexible aggregation options. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_billable_metric_v1_v1_request** | Option<[**CreateBillableMetricV1V1Request**](CreateBillableMetricV1V1Request.md)> | The details of the billable metric to create. |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_billable_metric_v1

> models::GetBillableMetricV1200Response get_billable_metric_v1(billable_metric_id)
Get a billable metric

Retrieves the complete configuration for a specific billable metric by its ID. Use this to review billable metric setup before associating it with products. Returns the metric's `name`, `event_type_filter`, `property_filters`, `aggregation_type`, `aggregation_key`, `group_keys`, `custom fields`, and `SQL query` (if it's a SQL billable metric).   Important:  - Archived billable metrics will include an `archived_at` timestamp; they no longer process new usage events but remain accessible for historical reference. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**billable_metric_id** | **uuid::Uuid** |  | [required] |

### Return type

[**models::GetBillableMetricV1200Response**](getBillableMetric_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_all_billable_metrics_v1

> models::ListAllBillableMetricsV1200Response list_all_billable_metrics_v1(limit, next_page, include_archived)
List all billable metrics

Retrieves all billable metrics with their complete configurations. Use this for programmatic discovery and management of billable metrics, such as associating metrics to products and auditing for orphaned or archived metrics.  Important: Archived metrics are excluded by default; use `include_archived`=`true` parameter to include them. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**include_archived** | Option<**bool**> | If true, the list of returned metrics will include archived metrics |  |

### Return type

[**models::ListAllBillableMetricsV1200Response**](listAllBillableMetrics_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_billable_metrics_v1

> models::ListBillableMetricsV1200Response list_billable_metrics_v1(customer_id, limit, next_page, on_current_plan, include_archived)
Get billable metrics for a customer

Get all billable metrics available for a specific customer. Supports pagination and filtering by current plan status or archived metrics. Use this endpoint to see which metrics are being tracked for billing calculations for a given customer. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**on_current_plan** | Option<**bool**> | If true, the list of metrics will be filtered to just ones that are on the customer's current plan |  |
**include_archived** | Option<**bool**> | If true, the list of returned metrics will include archived metrics |  |

### Return type

[**models::ListBillableMetricsV1200Response**](listBillableMetrics_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_billable_metric_v1

> models::ArchiveAlertV1200Response update_billable_metric_v1(billable_metric_id, create_credit_type_v1_request)
Update a billable metric

Updates only the display name of an existing billable metric. Use this to correct mistakes or apply standardized naming conventions across all billable metrics. Returns the billable metric ID to confirm the update.   Important: Only the name can be modified via this endpoint; configurations cannot be changed after creation.   #### Example workflow: If you need to make changes to a streaming billable metric, for example, Metronome supports easily rolling out these changes using a simple workflow: 1. Duplicate the billable metric 2. Make required changes 3. Save the metric 4. Navigate to the product you have associated with the incorrect metric 5. Schedule the product to reference the newly created metric on the appropriate date 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**billable_metric_id** | **uuid::Uuid** |  | [required] |
**create_credit_type_v1_request** | Option<[**CreateCreditTypeV1Request**](CreateCreditTypeV1Request.md)> | The billable metric to update |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

