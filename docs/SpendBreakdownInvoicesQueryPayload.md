# SpendBreakdownInvoicesQueryPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starting_on** | **chrono::DateTime<chrono::FixedOffset>** | RFC 3339 timestamp. Breakdowns will only be returned for time windows that start on or after this time. | 
**ending_before** | **chrono::DateTime<chrono::FixedOffset>** | RFC 3339 timestamp. Breakdowns will only be returned for time windows that end on or before this time. | 
**skip_zero_qty_line_items** | Option<**bool**> | If set, all zero quantity line items will be filtered out of the response. | [optional]
**credit_type_id** | Option<**uuid::Uuid**> | If provided, only invoices with the specified credit type id will be included in the response. | [optional]
**sort** | Option<**Sort**> | Invoice sort order by issued_at, e.g. date_asc or date_desc.  Defaults to date_asc. (enum: date_asc, date_desc) | [optional][default to DateAsc]
**window_size** | Option<**WindowSize**> | The granularity of the breakdowns to return. Defaults to \"day\". (enum: day, none, DAY, NONE, Day, None) | [optional]
**group_keys** | Option<**Vec<String>**> | A list of keys that can be used to additionally segment the values of the billable metric when making usage queries. Must be valid keys that are present in the billable metrics or an empty list. The value will be ignored and the default keys will be used if: billable metric is MAX type; product uses tiered pricing model; product has quantity rounding enabled; there are contract overrides based on presentation group keys  | [optional]
**group_filters** | Option<[**std::collections::HashMap<String, Vec<String>>**](Vec.md)> | An object where the keys are the group keys and the values are arrays of group values. If the values is an empty array, the returned usage data will be aggregated across all values for that key. The value will be ignored and the default keys will be used if: billable metric is MAX type; product uses tiered pricing model; product has quantity rounding enabled; there are contract overrides based on presentation group keys  | [optional]
**limit** | Option<**i32**> | Max number of results that should be returned. For daily and \"none\" breakdowns, the response can return up to 35 days worth of breakdowns. If there are more results, a cursor to the next page is returned. | [optional][default to 100]
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


