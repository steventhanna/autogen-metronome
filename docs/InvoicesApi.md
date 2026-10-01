# \InvoicesApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**charge_seats_v1**](InvoicesApi.md#charge_seats_v1) | **POST** /v1/customers/{customer_id}/invoices/invoice_seats | Invoice seats
[**get_invoice_pdf_v1**](InvoicesApi.md#get_invoice_pdf_v1) | **GET** /v1/customers/{customer_id}/invoices/{invoice_id}/pdf | Get an invoice PDF
[**get_invoice_v1**](InvoicesApi.md#get_invoice_v1) | **GET** /v1/customers/{customer_id}/invoices/{invoice_id} | Get an invoice
[**list_breakdown_invoices_v1**](InvoicesApi.md#list_breakdown_invoices_v1) | **GET** /v1/customers/{customer_id}/invoices/breakdowns | List invoice breakdowns
[**list_invoices_v1**](InvoicesApi.md#list_invoices_v1) | **GET** /v1/customers/{customer_id}/invoices | List invoices
[**list_spend_breakdown_invoices_v1**](InvoicesApi.md#list_spend_breakdown_invoices_v1) | **POST** /v1/customers/{customer_id}/invoices/spend-breakdowns | List spend invoice breakdowns
[**preview_customer_events_v1**](InvoicesApi.md#preview_customer_events_v1) | **POST** /v1/customers/{customer_id}/previewEvents | Preview events
[**regenerate_invoice_v1**](InvoicesApi.md#regenerate_invoice_v1) | **POST** /v1/invoices/regenerate | Regenerate an invoice
[**void_invoice_v1**](InvoicesApi.md#void_invoice_v1) | **POST** /v1/invoices/void | Void an invoice



## charge_seats_v1

> models::ChargeSeatsV1200Response charge_seats_v1(customer_id, charge_seats_v1_request)
Invoice seats

Creates an prorated invoice for a seat addition. As an alternative to this endpoint, you can elect to use automatic seat invoicing feature. Metronome will check for new seat usage every hour and automatically invoice for any new seats. For newly created active customer plans, there will be up to 4 hour delay before the first automatic seat invoice is generated. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**charge_seats_v1_request** | Option<[**ChargeSeatsV1Request**](ChargeSeatsV1Request.md)> | Invoice seats parameters. List of seat charges and additional seats to charge for. |  |

### Return type

[**models::ChargeSeatsV1200Response**](chargeSeats_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_invoice_pdf_v1

> serde_json::Value get_invoice_pdf_v1(customer_id, invoice_id)
Get an invoice PDF

Retrieve a PDF version of a specific invoice by its unique identifier. This endpoint generates a professionally formatted invoice document suitable for sharing with customers, accounting teams, or for record-keeping purposes.  ### Use this endpoint to: - Provide customers with downloadable or emailable copies of their invoices - Support accounting and finance teams with official billing documents - Maintain accurate records of billing transactions for audits and compliance  ### Key response details: - The response is a binary PDF file representing the full invoice - The PDF includes all standard invoice information such as line items, totals, billing period, and customer details - The document is formatted for clarity and professionalism, suitable for official use  ### Usage guidelines: - Ensure the `invoice_id` corresponds to an existing invoice for the specified `customer_id` - The PDF is generated on-demand; frequent requests for the same invoice may impact performance - Use appropriate headers to handle the binary response in your application (e.g., setting `Content-Type: application/pdf`) 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**invoice_id** | **uuid::Uuid** |  | [required] |

### Return type

[**serde_json::Value**](serde_json::Value.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_invoice_v1

> models::GetInvoiceV1200Response get_invoice_v1(customer_id, invoice_id, skip_zero_qty_line_items)
Get an invoice

Retrieve detailed information for a specific invoice by its unique identifier. This endpoint returns comprehensive invoice data including line items, applied credits, totals, and billing period details for both finalized and draft invoices.  ### Use this endpoint to: - Display historical invoice details in customer-facing dashboards or billing portals. - Retrieve current month draft invoices to show customers their month-to-date spend. - Access finalized invoices for historical billing records and payment reconciliation. - Validate customer pricing and credit applications for customer support queries.   ### Key response fields:  Invoice status (DRAFT, FINALIZED, VOID) Billing period start and end dates Total amount and amount due after credits Detailed line items broken down by: - Customer and contract information - Invoice line item type - Product/service name and ID - Quantity consumed - Unit and total price  - Time period for usage-based charges - Applied credits or prepaid commitments   ### Usage guidelines: - Draft invoices update in real-time as usage is reported and may change before finalization - The response includes both usage-based line items (e.g., API calls, data processed) and scheduled charges (e.g., monthly subscriptions, commitment fees) - Credit and commitment applications are shown as separate line items with negative amounts - For voided invoices, the response will indicate VOID status but retain all original line item details 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**invoice_id** | **uuid::Uuid** |  | [required] |
**skip_zero_qty_line_items** | Option<**bool**> | If set, all zero quantity line items will be filtered out of the response |  |

### Return type

[**models::GetInvoiceV1200Response**](getInvoice_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_breakdown_invoices_v1

> models::ListBreakdownInvoicesV1200Response list_breakdown_invoices_v1(customer_id, starting_on, ending_before, next_page, status, skip_zero_qty_line_items, limit, window_size, sort, credit_type_id)
List invoice breakdowns

Retrieve granular time-series breakdowns of invoice data at hourly or daily intervals. This endpoint transforms standard invoices into detailed timelines, enabling you to track usage patterns, identify consumption spikes, and provide customers with transparency into their billing details throughout the billing period.  ### Use this endpoint to: - Build usage analytics dashboards showing daily or hourly consumption trends - Identify peak usage periods for capacity planning and cost optimization - Generate detailed billing reports for finance teams and customer success - Troubleshoot billing disputes by examining usage patterns at specific times - Power real-time cost monitoring and alerting systems  ### Key response fields: An array of BreakdownInvoice objects, each containing: - All standard invoice fields (ID, customer, commit, line items, totals, status) - Line items with quantities and costs for that specific period - `breakdown_start_timestamp`: Start of the specific time window - `breakdown_end_timestamp`: End of the specific time window - `next_page`: Pagination cursor for large result sets  ### Usage guidelines: - Time granularity: Set `window_size` to hour or day based on your analysis needs - Response limits: Daily breakdowns return up to 35 days; hourly breakdowns return up to 24 hours per request - Date filtering: Use `starting_on` and `ending_before` to focus on specific periods - Performance: For large date ranges, use pagination to retrieve all data efficiently - Backdated usage: If usage events arrive after invoice finalization, breakdowns will reflect the updated usage - Zero quantity filtering: Use `skip_zero_qty_line_items=true` to exclude periods with no usage

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**starting_on** | **chrono::DateTime<chrono::FixedOffset>** | RFC 3339 timestamp. Breakdowns will only be returned for time windows that start on or after this time. | [required] |
**ending_before** | **chrono::DateTime<chrono::FixedOffset>** | RFC 3339 timestamp. Breakdowns will only be returned for time windows that end on or before this time. | [required] |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**status** | Option<**String**> | Invoice status, e.g. DRAFT or FINALIZED |  |
**skip_zero_qty_line_items** | Option<**bool**> | If set, all zero quantity line items will be filtered out of the response |  |
**limit** | Option<**i32**> | Max number of results that should be returned. For daily breakdowns, the response can return up to 35 days worth of breakdowns. For hourly breakdowns, the response can return up to 24 hours. If there are more results, a cursor to the next page is returned. |  |
**window_size** | Option<**String**> | The granularity of the breakdowns to return. Defaults to day. |  |
**sort** | Option<**String**> | Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc. |  |
**credit_type_id** | Option<**String**> | Only return invoices for the specified credit type |  |

### Return type

[**models::ListBreakdownInvoicesV1200Response**](listBreakdownInvoices_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_invoices_v1

> models::ListInvoicesV1200Response list_invoices_v1(customer_id, limit, next_page, status, r#type, skip_zero_qty_line_items, sort, credit_type_id, contract_id, starting_on, ending_before, webhook_notification_id, include_retired_commit_invoices)
List invoices

Retrieves a paginated list of invoices for a specific customer, with flexible filtering options to narrow results by status, date range, credit type, and more. This endpoint provides a comprehensive view of a customer's billing history and current charges, supporting both real-time billing dashboards and historical reporting needs.  ### Use this endpoint to: - Display historical invoice details in customer-facing dashboards or billing portals. - Retrieve current month draft invoices to show customers their month-to-date spend. - Access finalized invoices for historical billing records and payment reconciliation. - Validate customer pricing and credit applications for customer support queries.  - Generate financial reports by filtering invoices within specific date ranges  ### Key response fields: Array of invoice objects containing: - Invoice ID and status (DRAFT, FINALIZED, VOID) - Invoice type (USAGE, SCHEDULED) - Billing period start and end dates - Issue date and due date - Total amount, subtotal, and amount due - Applied credits summary - Contract ID reference - External billing provider status (if integrated with Stripe, etc.) - Pagination metadata `next_page` cursor  ### Usage guidelines: - The endpoint returns invoice summaries; use the Get Invoice endpoint for detailed line items - Draft invoices are continuously updated as new usage is reported and will show real-time spend - Results are ordered by creation date descending by default (newest first) - When filtering by date range, the filter applies to the billing period, not the issue date - For customers with many invoices, implement pagination to ensure all results are retrieved External billing provider statuses (like Stripe payment status) are included when applicable - Voided invoices are included in results by default unless filtered out by status 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**status** | Option<**String**> | Invoice status, e.g. DRAFT, FINALIZED, or VOID |  |
**r#type** | Option<**String**> | Filter invoices by type. Defaults to returning all invoice types. |  |
**skip_zero_qty_line_items** | Option<**bool**> | If set, all zero quantity line items will be filtered out of the response |  |
**sort** | Option<**String**> | Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc. |  |
**credit_type_id** | Option<**String**> | Only return invoices for the specified credit type |  |
**contract_id** | Option<**uuid::Uuid**> | Only return invoices for the specified contract |  |
**starting_on** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp (inclusive). Invoices will only be returned for billing periods that start at or after this time. |  |
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | RFC 3339 timestamp (exclusive). Invoices will only be returned for billing periods that end before this time. |  |
**webhook_notification_id** | Option<**String**> | Indicates that this API request was triggered by a webhook notification with the provided ID. |  |
**include_retired_commit_invoices** | Option<**bool**> | When true, includes retired commit invoices alongside active invoices. Defaults to false. |  |[default to false]

### Return type

[**models::ListInvoicesV1200Response**](listInvoices_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_spend_breakdown_invoices_v1

> models::ListSpendBreakdownInvoicesV1200Response list_spend_breakdown_invoices_v1(customer_id, include_list_prices, list_spend_breakdown_invoices_v1_request)
List spend invoice breakdowns

Granularly analyze customer spend patterns by dynamically slicing and dicing costs across any dimension. This endpoint empowers you to break down spending by granular properties like user, organization, model, region, or any custom event property—even if these aren't the default groupings on your invoices. Unlike standard invoice breakdowns, this endpoint focuses purely on spend analysis, making helpful for building powerful cost analytics dashboards that show spend before credit/commit application.  ### Use this endpoint to: - Identify cost drivers: Pinpoint which users, teams, or resources are driving the most spend - Build usage analytics dashboards: Let customers explore their costs by any event property (user_id, org_id, model_id, region, etc.) - Enable showback/chargeback: Allocate costs to specific departments, projects, or cost centers - Detect anomalies: Find unexpected spending patterns by analyzing costs across different dimensions - Optimize resource usage: Help customers identify underutilized or over-provisioned resources - Support multi-tenancy: Show spending breakdowns for specific organizations within a single account - Create custom reports: Generate executive dashboards with spending by any business-relevant dimension  ### Key response fields: Spend-focused invoice data with: - Pure spend information: No commits or credits—just raw spending data for cleaner analysis - Dynamic grouping: Line items grouped by your specified group_keys (overriding default presentation groups) - Filtered results: Only line items matching your group_filters criteria - Flexible time windows: Daily, hourly, or full-period (none) breakdowns - Complete line item details: Including quantities, unit prices, and custom presentation group values  ### Usage guidelines: - Group key setup: All keys used in group_keys, group_filters, and pricing groups must exist in the same compound group key on the billable metric - Supported window sizes: hour, day, or none (for full period analysis) - Filtering power: Use group_filters to focus on specific values (e.g., only show data for specific user_ids) - Override flexibility: Change how costs are grouped without affecting actual invoicing  Limitations: - Cannot override group keys when using:   - MAX aggregation billable metrics   - Tiered pricing   - Quantity rounding   - Commit-specific overrides   - Overrides on presentation group values

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**include_list_prices** | Option<**bool**> | If set, list prices will be returned for each contract usage and subscription line item. |  |
**list_spend_breakdown_invoices_v1_request** | Option<[**ListSpendBreakdownInvoicesV1Request**](ListSpendBreakdownInvoicesV1Request.md)> |  |  |

### Return type

[**models::ListSpendBreakdownInvoicesV1200Response**](listSpendBreakdownInvoices_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## preview_customer_events_v1

> models::PreviewCustomerEventsV1200Response preview_customer_events_v1(customer_id, preview_customer_events_v1_request)
Preview events

Preview how a set of events will affect a customer's invoices. Generates draft invoices for a customer using their current contract configuration and the provided events.  This is useful for testing how new events will affect the customer's invoices before they are actually processed. Customers on contracts with SQL billable metrics are not supported. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**preview_customer_events_v1_request** | Option<[**PreviewCustomerEventsV1Request**](PreviewCustomerEventsV1Request.md)> | The events to preview |  |

### Return type

[**models::PreviewCustomerEventsV1200Response**](previewCustomerEvents_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## regenerate_invoice_v1

> models::VoidInvoiceV1200Response regenerate_invoice_v1(archive_alert_v1200_response_data)
Regenerate an invoice

This endpoint regenerates a voided invoice and recalculates the invoice based on up-to-date rates, available balances, and other fees regardless of the billing period.  ### Use this endpoint to: Recalculate an invoice with updated rate terms, available balance, and fees to correct billing disputes or discrepancies  ### Key response fields: The regenerated invoice id, which is distinct from the previously voided invoice.  ### Usage guidelines: If an invoice is attached to a contract with a billing provider on it, the regenerated invoice will be distributed based on the configuration. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | The invoice id to regenerate |  |

### Return type

[**models::VoidInvoiceV1200Response**](voidInvoice_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## void_invoice_v1

> models::VoidInvoiceV1200Response void_invoice_v1(archive_alert_v1200_response_data)
Void an invoice

Permanently cancels an invoice by setting its status to voided, preventing collection and removing it from customer billing. Use this to correct billing errors, cancel incorrect charges, or handle disputed invoices that should not be collected. Returns the voided invoice ID with the status change applied immediately to stop any payment processing. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | The invoice id to void |  |

### Return type

[**models::VoidInvoiceV1200Response**](voidInvoice_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

