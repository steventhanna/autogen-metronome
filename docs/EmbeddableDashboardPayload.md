# EmbeddableDashboardPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**dashboard** | **String** | The type of dashboard to retrieve. | 
**dashboard_options** | Option<[**Vec<models::EmbeddableDashboardPayloadDashboardOptionsInner>**](EmbeddableDashboardPayload_dashboard_options_inner.md)> | Optional dashboard specific options | [optional]
**color_overrides** | Option<[**Vec<models::EmbeddableDashboardPayloadColorOverridesInner>**](EmbeddableDashboardPayload_color_overrides_inner.md)> | Optional list of colors to override | [optional]
**bm_group_key_overrides** | Option<[**Vec<models::EmbeddableDashboardPayloadBmGroupKeyOverridesInner>**](EmbeddableDashboardPayload_bm_group_key_overrides_inner.md)> | Optional list of billable metric group key overrides | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


