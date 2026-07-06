# ChargeSeatsV1200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**customer_id** | **uuid::Uuid** |  | 
**customer_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**net_payment_terms_days** | Option<**f64**> |  | [optional]
**credit_type** | [**models::ChargeSeatsV1200ResponseCreditType**](ChargeSeatsV1200ResponseCreditType.md) |  | 
**line_items** | [**Vec<models::ChargeSeatsV1200ResponseLineItemsInner>**](ChargeSeatsV1200ResponseLineItemsInner.md) |  | 
**start_timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Beginning of the usage period this invoice covers (UTC) | [optional]
**end_timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> | End of the usage period this invoice covers (UTC) | [optional]
**issued_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When the invoice was issued (UTC) | [optional]
**created_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When the invoice was created (UTC). This field is present for correction invoices only. | [optional]
**status** | **String** |  | 
**total** | **f64** |  | 
**r#type** | **String** |  | 
**external_invoice** | Option<[**models::ChargeSeatsV1200ResponseExternalInvoice**](ChargeSeatsV1200ResponseExternalInvoice.md)> |  | [optional]
**revenue_system_invoices** | Option<[**Vec<models::ChargeSeatsV1200ResponseRevenueSystemInvoicesInner>**](ChargeSeatsV1200ResponseRevenueSystemInvoicesInner.md)> |  | [optional]
**contract_id** | Option<**uuid::Uuid**> |  | [optional]
**contract_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**amendment_id** | Option<**uuid::Uuid**> |  | [optional]
**correction_record** | Option<[**models::ChargeSeatsV1200ResponseCorrectionRecord**](ChargeSeatsV1200ResponseCorrectionRecord.md)> |  | [optional]
**reseller_royalty** | Option<[**models::ChargeSeatsV1200ResponseResellerRoyalty**](ChargeSeatsV1200ResponseResellerRoyalty.md)> |  | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**billable_status** | Option<**BillableStatus**> | This field's availability is dependent on your client's configuration. (enum: billable, unbillable) | [optional]
**constituent_invoices** | Option<[**Vec<models::ChargeSeatsV1200ResponseConstituentInvoicesInner>**](ChargeSeatsV1200ResponseConstituentInvoicesInner.md)> | Required on invoices with type USAGE_CONSOLIDATED. List of constituent invoices that were consolidated to create this invoice. | [optional]
**payer** | Option<[**models::ChargeSeatsV1200ResponsePayer**](ChargeSeatsV1200ResponsePayer.md)> |  | [optional]
**regenerated_from_invoice_id** | Option<**uuid::Uuid**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


