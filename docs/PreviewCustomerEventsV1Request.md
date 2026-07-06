# PreviewCustomerEventsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**events** | [**Vec<models::PreviewCustomerEventsV1RequestEventsInner>**](PreviewCustomerEventsV1RequestEventsInner.md) | Array of usage events to include in the preview calculation. Must contain at least one event in `merge` mode.  | 
**mode** | Option<**Mode**> | Controls how the provided events are combined with existing usage data. Use `replace` to calculate the preview as if these are the only events for the customer, ignoring all historical usage.  Use `merge` to combine these events with the customer's existing usage.  Defaults to `replace`.  (enum: replace, merge) | [optional][default to Replace]
**skip_zero_qty_line_items** | Option<**bool**> | When `true`, line items with zero quantity are excluded from the response. | [optional][default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


