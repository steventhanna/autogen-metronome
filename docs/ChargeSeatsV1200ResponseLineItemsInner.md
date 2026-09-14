# ChargeSeatsV1200ResponseLineItemsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**quantity** | Option<**f64**> | The quantity associated with the line item. | [optional]
**total** | **f64** |  | 
**unit_price** | Option<**f64**> | The unit price associated with the line item. | [optional]
**list_price** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerListPrice**](ChargeSeatsV1200ResponseLineItemsInnerListPrice.md)> |  | [optional]
**product_id** | Option<**uuid::Uuid**> | ID of the product associated with the line item. | [optional]
**product_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**product_tags** | Option<**Vec<String>**> | The current product tags associated with the line item's `product_id`. | [optional]
**product_type** | Option<**String**> | The type of the line item's product. Possible values are `FixedProductListItem` (for `FIXED` type products), `UsageProductListItem` (for `USAGE` type products), `SubscriptionProductListItem` (for `SUBSCRIPTION` type products) or `CompositeProductListItem` (for `COMPOSITE` type products).  For scheduled charges, commit and credit payments, the value is `FixedProductListItem`.  | [optional]
**r#type** | **String** | The type of line item.  - `scheduled`: Line item is associated with a scheduled charge. View the scheduled_charge_id on the line item. - `commit_purchase`: Line item is associated with a payment for a prepaid commit. View the commit_id on the line item. - `usage`: Line item is associated with a usage product or composite product. View the product_id on the line item to determine which product. - `subscription`: Line item is associated with a subscription. e.g. monthly recurring payment for an in-advance subscription. - `applied_commit_or_credit`: On metronome invoices, applied commits and credits are associated with their own line items. These line items have negative totals. Use the applied_commit_or_credit object on the line item to understand the id of the applied commit or credit, and its type. Note that the application of a postpaid commit is associated with a line item, but the total on the line item is not included in the invoice's total as postpaid commits are paid in-arrears. - `cpu_conversion`: Line item converting between a custom pricing unit and fiat currency, using the conversion rate set on the rate card. This line item will appear when there are products priced in custom pricing units, and there is insufficient prepaid commit/credit in that custom pricing unit to fully cover the spend. Then, the outstanding spend in custom pricing units will be converted to fiat currency using a cpu_conversion line item.  | 
**netsuite_item_id** | Option<**String**> |  | [optional]
**is_prorated** | Option<**bool**> | Indicates whether the line item is prorated for `SUBSCRIPTION` type product. | [optional]
**credit_type** | [**models::ChargeSeatsV1200ResponseCreditType**](ChargeSeatsV1200ResponseCreditType.md) |  | 
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The line item's start date (inclusive). | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The line item's end date (exclusive). | [optional]
**commit_id** | Option<**uuid::Uuid**> | For line items with product of `USAGE`, `SUBSCRIPTION`, or `COMPOSITE` types, the ID of the credit or commit that was applied to this line item. For line items with product type of `FIXED`, the ID of the prepaid or postpaid commit that is being paid for. | [optional]
**applied_commit_or_credit** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerAppliedCommitOrCredit**](ChargeSeatsV1200ResponseLineItemsInnerAppliedCommitOrCredit.md)> |  | [optional]
**commit_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**commit_segment_id** | Option<**uuid::Uuid**> |  | [optional]
**commit_type** | Option<**String**> | `PrepaidCommit` (for commit types `PREPAID` and `CREDIT`) or `PostpaidCommit` (for commit type `POSTPAID`). | [optional]
**commit_netsuite_sales_order_id** | Option<**String**> |  | [optional]
**commit_netsuite_item_id** | Option<**String**> |  | [optional]
**postpaid_commit** | Option<[**models::ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> |  | [optional]
**reseller_type** | Option<**ResellerType**> |  (enum: AWS, AWS_PRO_SERVICE, GCP, GCP_PRO_SERVICE) | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | Includes the pricing group values associated with this line item if dimensional pricing is used. | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> | Includes the presentation group values associated with this line item if presentation group keys are used. | [optional]
**metadata** | Option<**String**> |  | [optional]
**netsuite_invoice_billing_start** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The start date for the billing period on the invoice. | [optional]
**netsuite_invoice_billing_end** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The end date for the billing period on the invoice. | [optional]
**professional_service_id** | Option<**uuid::Uuid**> |  | [optional]
**professional_service_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**scheduled_charge_id** | Option<**uuid::Uuid**> | ID of scheduled charge. | [optional]
**scheduled_charge_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**subscription_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**subscription_id** | Option<**uuid::Uuid**> | ID of the subscription that this line item is associated with. Only present on line items with product of `SUBSCRIPTION` type. | [optional]
**tier** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerTier**](ChargeSeatsV1200ResponseLineItemsInnerTier.md)> |  | [optional]
**discount_id** | Option<**uuid::Uuid**> | ID of the discount applied to this line item. | [optional]
**discount_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**origin** | Option<[**models::ChargeSeatsV1200ResponseLineItemsInnerOrigin**](ChargeSeatsV1200ResponseLineItemsInnerOrigin.md)> |  | [optional]
**quantity_consumed** | Option<**f64**> | Present on applied commit line items for quantity-based commits. Represents the unit quantity deducted the commit. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


