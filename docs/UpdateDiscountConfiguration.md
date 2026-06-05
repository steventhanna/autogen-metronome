# UpdateDiscountConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_fraction** | Option<**f64**> | The fraction of the original amount that the customer pays after applying the discount. Set to null to remove the discount fraction. For example, 0.85 means the customer pays 85% of the original amount (a 15% discount).  | [optional]
**cap** | Option<[**models::PrepaidBalanceDiscountCapInput**](PrepaidBalanceDiscountCapInput.md)> | Update the discount cap. Set to null to remove an existing cap. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


