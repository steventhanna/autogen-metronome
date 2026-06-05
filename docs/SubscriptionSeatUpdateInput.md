# SubscriptionSeatUpdateInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**add_seat_ids** | Option<[**Vec<models::SubscriptionSeatUpdateAssignedSeat>**](SubscriptionSeatUpdateAssignedSeat.md)> | Adds seat IDs to the subscription.  If there are unassigned seats, the new seat IDs will fill these unassigned seats and not increase the total subscription quantity. Otherwise, if there are more new seat IDs than unassigned seats, the total subscription quantity will increase. | [optional]
**remove_seat_ids** | Option<[**Vec<models::SubscriptionSeatUpdateAssignedSeat>**](SubscriptionSeatUpdateAssignedSeat.md)> | Removes seat IDs from the subscription, if possible.  If a seat ID is removed, the total subscription quantity will decrease. Otherwise, if the seat ID is not found on the subscription, this is a no-op. | [optional]
**add_unassigned_seats** | Option<[**Vec<models::SubscriptionSeatUpdateUnassignedSeat>**](SubscriptionSeatUpdateUnassignedSeat.md)> | Adds unassigned seats to the subscription. This will increase the total subscription quantity. | [optional]
**remove_unassigned_seats** | Option<[**Vec<models::SubscriptionSeatUpdateUnassignedSeat>**](SubscriptionSeatUpdateUnassignedSeat.md)> | Removes unassigned seats from the subscription. This will decrease the total subscription quantity if there are are unassigned seats. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


