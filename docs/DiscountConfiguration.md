# DiscountConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_fraction** | **f64** | The fraction of the original amount that the customer pays after applying the discount. For example, 0.85 means the customer pays 85% of the original amount (a 15% discount). | 
**cap** | Option<[**models::PrepaidBalanceDiscountCap**](PrepaidBalanceDiscountCap.md)> | If provided, the discount stops applying once the spend tracker has accumulated this much spend in the billing period. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


