# ListSeatBalancesV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) | The customer ID to retrieve seat balances for | 
**contract_id** | [**uuid::Uuid**](uuid::Uuid.md) | The contract ID to retrieve seat balances for | 
**subscription_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Optional filter to only include seats from specific subscriptions. If subscriptions ids are not mapped to SEAT_BASED subscriptions, error will be returned. | [optional]
**seat_ids** | Option<**Vec<String>**> | Optional filter to only include specific seats. | [optional]
**include_credits_and_commits** | Option<**bool**> | Include credits and commits in the response | [optional][default to false]
**include_ledgers** | Option<**bool**> | Include ledger entries for each commit and commit. `include_credits_and_commits` must be set to `true` for `include_ledgers=true` to apply. | [optional][default to false]
**starting_at** | Option<**String**> | Include only commits or credits with access effective on or after this date (cannot be used with covering_date). | [optional]
**effective_before** | Option<**String**> | Include only commits or credits with access effective on or before this date (cannot be used with covering_date). | [optional]
**covering_date** | Option<**String**> | Include only commits or credits with access that cover this specific date (cannot be used with starting_at or ending_before). | [optional]
**limit** | Option<**i32**> | Maximum number of seats to return. Range: 1-100. Default: 25. When `include_credits_and_commits = true`, if the total commits/credits across all seats exceeds 100, a limit of 100 applies to the total credits and commits. Seats are included greedily to maximize the number of seats returned. Example: if seat 1 has 98 commits and seat 2 has 10 commits, both seats will be returned (total: 108 commits). Each returned seat includes all of its associated credits and commits.  | [optional]
**cursor** | Option<**String**> | Page token from a previous response to retrieve the next page | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


