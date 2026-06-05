# EditContractV2RequestUpdateSubscriptionsInnerSeatUpdates

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_seat_ids** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInnerSeatUpdatesAddSeatIdsInner>**](getContractEditHistory_v2_200_response_data_inner_update_subscriptions_inner_seat_updates_add_seat_ids_inner.md)> | Adds seat IDs to the subscription.  If there are unassigned seats, the new seat IDs will fill these unassigned seats and not increase the total subscription quantity. Otherwise, if there are more new seat IDs than unassigned seats, the total subscription quantity will increase. | [optional]
**remove_seat_ids** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInnerSeatUpdatesAddSeatIdsInner>**](getContractEditHistory_v2_200_response_data_inner_update_subscriptions_inner_seat_updates_add_seat_ids_inner.md)> | Removes seat IDs from the subscription, if possible.  If a seat ID is removed, the total subscription quantity will decrease. Otherwise, if the seat ID is not found on the subscription, this is a no-op. | [optional]
**add_unassigned_seats** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInnerSeatUpdatesAddUnassignedSeatsInner>**](getContractEditHistory_v2_200_response_data_inner_update_subscriptions_inner_seat_updates_add_unassigned_seats_inner.md)> | Adds unassigned seats to the subscription. This will increase the total subscription quantity. | [optional]
**remove_unassigned_seats** | Option<[**Vec<models::GetContractEditHistoryV2200ResponseDataInnerUpdateSubscriptionsInnerSeatUpdatesAddUnassignedSeatsInner>**](getContractEditHistory_v2_200_response_data_inner_update_subscriptions_inner_seat_updates_add_unassigned_seats_inner.md)> | Removes unassigned seats from the subscription. This will decrease the total subscription quantity if there are are unassigned seats. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


