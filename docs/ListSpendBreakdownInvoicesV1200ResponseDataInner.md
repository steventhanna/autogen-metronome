# ListSpendBreakdownInvoicesV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**customer_id** | **uuid::Uuid** |  | 
**credit_type** | [**models::ChargeSeatsV1200ResponseCreditType**](ChargeSeatsV1200ResponseCreditType.md) |  | 
**line_items** | [**Vec<models::ChargeSeatsV1200ResponseLineItemsInner>**](ChargeSeatsV1200ResponseLineItemsInner.md) |  | 
**start_timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Beginning of the usage period this invoice covers (UTC) | [optional]
**end_timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> | End of the usage period this invoice covers (UTC) | [optional]
**issued_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When the invoice was issued (UTC) | [optional]
**created_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When the invoice was created (UTC). This field is present for correction invoices only. | [optional]
**status** | **String** |  | 
**r#type** | **String** |  | 
**contract_id** | Option<**uuid::Uuid**> |  | [optional]
**breakdown_start_timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**breakdown_end_timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


