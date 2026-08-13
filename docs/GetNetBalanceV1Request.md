# GetNetBalanceV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** | The ID of the customer. | 
**credit_type_id** | Option<**uuid::Uuid**> | The ID of the credit type (can be fiat or a custom pricing unit) to get the balance for. Defaults to USD (cents) if not specified. | [optional]
**access_type** | Option<**AccessType**> | Filters balances by how they are drawn down. Defaults to `SPEND`. If set to `QUANTITY`, `credit_type_id` must not be provided. (enum: SPEND, spend, QUANTITY, quantity) | [optional]
**filters** | Option<[**Vec<models::GetNetBalanceV1RequestFiltersInner>**](GetNetBalanceV1RequestFiltersInner.md)> | Balance filters are OR'd together, so if a given commit or credit matches any of the filters, it will be included in the net balance. | [optional]
**invoice_inclusion_mode** | Option<**InvoiceInclusionMode**> | Controls which invoices are considered when calculating the remaining balance. `FINALIZED` considers only deductions from finalized invoices. `FINALIZED_AND_DRAFT` also includes deductions from pending draft invoices. (enum: FINALIZED, FINALIZED_AND_DRAFT) | [optional][default to FinalizedAndDraft]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


