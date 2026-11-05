# SpendBreakdownLineItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**quantity** | Option<**f64**> | The quantity associated with the line item. | [optional]
**total** | **f64** |  | 
**unit_price** | Option<**f64**> | The unit price associated with the line item. | [optional]
**list_price** | Option<[**models::Rate**](Rate.md)> |  | [optional]
**product_id** | Option<**uuid::Uuid**> | ID of the product associated with the line item. | [optional]
**product_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**product_tags** | Option<**Vec<String>**> |  | [optional]
**product_type** | Option<**String**> | The type of the line item's product. Possible values are `UsageProductListItem` (for `USAGE` type products), `SubscriptionProductListItem` (for `SUBSCRIPTION` type products), or `CompositeProductListItem` (for `COMPOSITE` type products).  | [optional]
**r#type** | **String** | The type of line item. Spend breakdowns only return `usage` and `subscription` line items.  - `usage`: Line item is associated with a usage product or composite product. View the product_id on the line item to determine which product. - `subscription`: Line item is associated with a subscription. e.g. monthly recurring payment for an in-advance subscription.  | 
**netsuite_item_id** | Option<**String**> |  | [optional]
**is_prorated** | Option<**bool**> | Indicates whether the line item is prorated for `SUBSCRIPTION` type product. | [optional]
**credit_type** | [**models::CreditType**](CreditType.md) |  | 
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The line item's start date (inclusive). | [optional]
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | The line item's end date (exclusive). | [optional]
**commit_id** | Option<**uuid::Uuid**> | The ID of the credit or commit applied to this usage or subscription line item, when the line item is drawn against a commit or credit. | [optional]
**applied_commit_or_credit** | Option<[**models::AppliedCommitOrCredit**](AppliedCommitOrCredit.md)> |  | [optional]
**commit_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**commit_segment_id** | Option<**uuid::Uuid**> |  | [optional]
**commit_type** | Option<**String**> | `PrepaidCommit` (for commit types `PREPAID` and `CREDIT`) or `PostpaidCommit` (for commit type `POSTPAID`). | [optional]
**commit_netsuite_sales_order_id** | Option<**String**> |  | [optional]
**commit_netsuite_item_id** | Option<**String**> |  | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | Includes the pricing group values associated with this line item if dimensional pricing is used. | [optional]
**presentation_group_values** | Option<**std::collections::HashMap<String, String>**> | Includes the presentation group values associated with this line item if presentation group keys are used. | [optional]
**subscription_custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**subscription_id** | Option<**uuid::Uuid**> | ID of the subscription that this line item is associated with. Only present on subscription line items. | [optional]
**tier** | Option<[**models::TierMetadata**](TierMetadata.md)> |  | [optional]
**origin** | Option<[**models::SpendBreakdownLineItemOrigin**](SpendBreakdownLineItemOrigin.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


