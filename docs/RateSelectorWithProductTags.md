# RateSelectorWithProductTags

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_frequency** | Option<**BillingFrequency**> | Subscription rates matching the billing frequency will be included in the response. (enum: MONTHLY, Monthly, monthly, QUARTERLY, Quarterly, quarterly, ANNUAL, Annual, annual, WEEKLY, Weekly, weekly) | [optional]
**product_id** | Option<**uuid::Uuid**> | Rates matching the product id will be included in the response. | [optional]
**product_tags** | Option<**Vec<String>**> | List of product tags, rates matching any of the tags will be included in the response. | [optional]
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | List of pricing group key value pairs, rates matching all of the key / value pairs will be included in the response. | [optional]
**partial_pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | List of pricing group key value pairs, rates containing the matching key / value pairs will be included in the response. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


