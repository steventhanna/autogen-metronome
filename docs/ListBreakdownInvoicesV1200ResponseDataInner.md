# ListBreakdownInvoicesV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**customer_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**credit_type** | [**models::ChargeSeatsV1200ResponseCreditType**](chargeSeats_v1_200_response_credit_type.md) |  | 
**line_items** | [**Vec<models::ChargeSeatsV1200ResponseLineItemsInner>**](chargeSeats_v1_200_response_line_items_inner.md) |  | 
**start_timestamp** | Option<**String**> | Beginning of the usage period this invoice covers (UTC) | [optional]
**end_timestamp** | Option<**String**> | End of the usage period this invoice covers (UTC) | [optional]
**issued_at** | Option<**String**> | When the invoice was issued (UTC) | [optional]
**created_at** | Option<**String**> | When the invoice was created (UTC). This field is present for correction invoices only. | [optional]
**status** | **String** |  | 
**total** | **f64** |  | 
**r#type** | **String** |  | 
**external_invoice** | Option<[**models::ChargeSeatsV1200ResponseExternalInvoice**](chargeSeats_v1_200_response_external_invoice.md)> |  | [optional]
**revenue_system_invoices** | Option<[**Vec<models::ChargeSeatsV1200ResponseRevenueSystemInvoicesInner>**](chargeSeats_v1_200_response_revenue_system_invoices_inner.md)> |  | [optional]
**contract_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**contract_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**amendment_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**correction_record** | Option<[**models::ChargeSeatsV1200ResponseCorrectionRecord**](chargeSeats_v1_200_response_correction_record.md)> |  | [optional]
**reseller_royalty** | Option<[**models::ChargeSeatsV1200ResponseResellerRoyalty**](chargeSeats_v1_200_response_reseller_royalty.md)> |  | [optional]
**custom_fields** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**billable_status** | Option<[**models::ListBreakdownInvoicesV1200ResponseDataInnerAllOfBillableStatus**](listBreakdownInvoices_v1_200_response_data_inner_allOf_billable_status.md)> |  | [optional]
**constituent_invoices** | Option<[**Vec<models::ChargeSeatsV1200ResponseConstituentInvoicesInner>**](chargeSeats_v1_200_response_constituent_invoices_inner.md)> | Required on invoices with type USAGE_CONSOLIDATED. List of constituent invoices that were consolidated to create this invoice. | [optional]
**payer** | Option<[**models::ChargeSeatsV1200ResponsePayer**](chargeSeats_v1_200_response_payer.md)> |  | [optional]
**regenerated_from_invoice_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**breakdown_start_timestamp** | **String** |  | 
**breakdown_end_timestamp** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


