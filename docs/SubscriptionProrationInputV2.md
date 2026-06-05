# SubscriptionProrationInputV2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_prorated** | Option<**bool**> | Indicates if the partial period will be prorated or charged a full amount. | [optional]
**invoice_behavior** | Option<**String**> | Indicates how mid-period quantity adjustments are invoiced. **BILL_IMMEDIATELY**: Only available when collection schedule is `ADVANCE`. The quantity increase will be billed immediately on the scheduled date. **BILL_ON_NEXT_COLLECTION_DATE**: The quantity increase will be billed for in-arrears at the end of the period.  | [optional]
**rounding** | Option<[**models::ProrationRoundingConfigV2**](ProrationRoundingConfigV2.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


