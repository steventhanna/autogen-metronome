# ListSeatBalancesV1200ResponseDataInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**seat_id** | **String** | The unique identifier for the seat | 
**balances** | [**Vec<models::ListSeatBalancesV1200ResponseDataInnerBalancesInner>**](ListSeatBalancesV1200ResponseDataInnerBalancesInner.md) |  | 
**commits** | Option<[**Vec<models::ListSeatBalancesV1200ResponseDataInnerCommitsInner>**](ListSeatBalancesV1200ResponseDataInnerCommitsInner.md)> | Array of commits applicable to this seat with their balances | [optional]
**credits** | Option<[**Vec<models::ListSeatBalancesV1200ResponseDataInnerCreditsInner>**](ListSeatBalancesV1200ResponseDataInnerCreditsInner.md)> | Array of credits applicable to this seat with their balances | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


