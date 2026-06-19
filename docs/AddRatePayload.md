# AddRatePayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_card_id** | **uuid::Uuid** | ID of the rate card to update | 
**product_id** | **uuid::Uuid** | ID of the product to add a rate for | 
**pricing_group_values** | Option<**std::collections::HashMap<String, String>**> | Optional. List of pricing group key value pairs which will be used to calculate the price. | [optional]
**billing_frequency** | Option<**BillingFrequency**> | Optional. Frequency to bill subscriptions with. Required for subscription type products with Flat rate. (enum: MONTHLY, QUARTERLY, ANNUAL, WEEKLY, monthly, quarterly, annual, weekly) | [optional]
**starting_at** | **chrono::DateTime<chrono::FixedOffset>** | inclusive effective date | 
**ending_before** | Option<**chrono::DateTime<chrono::FixedOffset>**> | exclusive end date | [optional]
**entitled** | **bool** |  | 
**rate_type** | **RateType** |  (enum: FLAT, flat, PERCENTAGE, percentage, SUBSCRIPTION, subscription, TIERED, tiered, TIERED_PERCENTAGE, tiered_percentage, CUSTOM, custom) | 
**price** | Option<**f64**> | Default price. For FLAT and SUBSCRIPTION rate_type, this must be >=0. For PERCENTAGE rate_type, this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1. | [optional]
**credit_type_id** | Option<**uuid::Uuid**> | The Metronome ID of the credit type to associate with price, defaults to USD (cents) if not passed. Used by all rate_types except type PERCENTAGE. PERCENTAGE rates use the credit type of associated rates. | [optional]
**quantity** | Option<**f64**> | Default quantity. For SUBSCRIPTION rate_type, this must be >=0. | [optional]
**is_prorated** | Option<**bool**> | Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be set to true. | [optional]
**tiers** | Option<[**Vec<models::Tier>**](Tier.md)> | Only set for TIERED rate_type. | [optional]
**minimum_config** | Option<[**models::MinimumConfig**](MinimumConfig.md)> |  | [optional]
**custom_rate** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Only set for CUSTOM rate_type. This field is interpreted by custom rate processors. | [optional]
**commit_rate** | Option<[**models::CommitRate**](CommitRate.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


