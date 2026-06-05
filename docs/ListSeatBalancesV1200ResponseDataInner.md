# ListSeatBalancesV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seat_id** | **String** | The unique identifier for the seat | 
**balances** | [**Vec<models::ListSeatBalancesV1200ResponseDataInnerBalancesInner>**](listSeatBalances_v1_200_response_data_inner_balances_inner.md) |  | 
**commits** | Option<[**Vec<models::ListSeatBalancesV1200ResponseDataInnerCommitsInner>**](listSeatBalances_v1_200_response_data_inner_commits_inner.md)> | Array of commits applicable to this seat with their balances | [optional]
**credits** | Option<[**Vec<models::ListSeatBalancesV1200ResponseDataInnerCreditsInner>**](listSeatBalances_v1_200_response_data_inner_credits_inner.md)> | Array of credits applicable to this seat with their balances | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


