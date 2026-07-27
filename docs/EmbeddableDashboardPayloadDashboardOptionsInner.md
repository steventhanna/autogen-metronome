# EmbeddableDashboardPayloadDashboardOptionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **Key** | The option key name (enum: show_zero_usage_line_items, contract_id, invoice_type, invoice_status_filter, hide_voided_invoices, billable_status_filter) | 
**value** | **String** | The option value. For show_zero_usage_line_items: \"true\" or \"false\" (default \"false\"). For contract_id: a UUID filtering invoices to a specific contract. For invoice_type: \"USAGE\" or \"SCHEDULED\". For invoice_status_filter: \"VOID\", \"FINALIZED\", \"DRAFT\", \"FINALIZED_AND_DRAFT\", or \"ALL\". For hide_voided_invoices (deprecated): \"true\" or \"false\". | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


