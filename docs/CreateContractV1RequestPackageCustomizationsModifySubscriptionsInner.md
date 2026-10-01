# CreateContractV1RequestPackageCustomizationsModifySubscriptionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_subscription_id** | Option<**uuid::Uuid**> | ID of the template subscription on the package to customize. Provide exactly one of template_subscription_id or subscription_alias. | [optional]
**subscription_alias** | Option<**String**> | Human-readable alias of the template subscription on the package to customize, as an alternative to template_subscription_id. Provide exactly one of the two. | [optional]
**initial_quantity** | Option<**f64**> | The initial quantity for the subscription. Must be a non-negative value. Provide for a QUANTITY_ONLY subscription. | [optional]
**initial_seat_ids** | Option<**Vec<String>**> | Seat identifiers to assign at the start of a SEAT_BASED subscription. | [optional]
**initial_unassigned_seats** | Option<**f64**> | Number of unassigned seats to provision at the start of a SEAT_BASED subscription. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


