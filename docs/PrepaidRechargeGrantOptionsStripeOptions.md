# PrepaidRechargeGrantOptionsStripeOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calculate_tax** | Option<**bool**> | Whether to calculate tax for the prepaid invoice Defaults to false if not provided. | [optional]
**tax_platform** | Option<[**models::TaxPlatform**](TaxPlatform.md)> |  | [optional]
**skip_tax_on_tax_platform_error** | Option<**bool**> | Whether to skip tax calculation if the tax platform returns an error. Defaults to true if not provided. | [optional]
**tax_product_id** | Option<**String**> | Optional Stripe product ID to use for the tax line item. If omitted a random Stripe product will be created and used for the invoice. | [optional]
**redirect_url** | Option<**String**> | The URL to redirect the user to after they have corrected a billing issue | [optional]
**invoice_custom_fields** | Option<[**Vec<models::NameValuePair>**](NameValuePair.md)> | Custom fields to add to the prepaid invoice | [optional]
**invoice_metadata** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Invoice metadata to add to the prepaid invoice | [optional]
**payment_method_id** | Option<**String**> | Optional Stripe payment method ID to use. | [optional]
**product_id** | Option<**String**> | Optional Stripe product ID to use for the grant. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


