# CreateContractV1RequestCommitsInnerInvoiceScheduleScheduleItemsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**unit_price** | Option<**f64**> | Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified with quantity. If specified amount cannot be provided. | [optional]
**quantity** | Option<**f64**> | Quantity for the charge. Will be multiplied by unit_price to determine the amount and must be specified with unit_price. If specified amount cannot be provided. | [optional]
**amount** | Option<**f64**> | Amount for the charge. Can be provided instead of unit_price and quantity. If amount is sent, the unit_price is assumed to be the amount and quantity is inferred to be 1. | [optional]
**timestamp** | **chrono::DateTime<chrono::FixedOffset>** | timestamp of the scheduled event | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


