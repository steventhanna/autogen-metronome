# SpendBreakdownInvoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **uuid::Uuid** |  | 
**customer_id** | **uuid::Uuid** |  | 
**credit_type** | [**models::CreditType**](CreditType.md) |  | 
**line_items** | [**Vec<models::SpendBreakdownLineItem>**](SpendBreakdownLineItem.md) |  | 
**start_timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Beginning of the usage period this invoice covers (UTC) | [optional]
**end_timestamp** | Option<**chrono::DateTime<chrono::FixedOffset>**> | End of the usage period this invoice covers (UTC) | [optional]
**issued_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | When the invoice was issued (UTC) | [optional]
**status** | **String** |  | 
**r#type** | **String** | The invoice type. Spend breakdowns only return usage invoices. | 
**contract_id** | Option<**uuid::Uuid**> |  | [optional]
**breakdown_start_timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 
**breakdown_end_timestamp** | **chrono::DateTime<chrono::FixedOffset>** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


