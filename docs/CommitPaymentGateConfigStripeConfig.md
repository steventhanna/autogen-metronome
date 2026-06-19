# CommitPaymentGateConfigStripeConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_type** | **PaymentType** | If left blank, will default to INVOICE (enum: INVOICE, PAYMENT_INTENT) | 
**invoice_metadata** | Option<**std::collections::HashMap<String, String>**> | Metadata to be added to the Stripe invoice. Only applicable if using INVOICE as your payment type. | [optional]
**on_session_payment** | Option<**bool**> | If true, the payment will be made assuming the customer is present (i.e. on session).   If false, the payment will be made assuming the customer is not present (i.e. off session).  For cardholders from a country with an e-mandate requirement (e.g. India), the payment may be declined.  If left blank, will default to false. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


