# EmbeddableDashboardV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**dashboard** | **String** | The type of dashboard to retrieve. | 
**dashboard_options** | Option<[**Vec<models::EmbeddableDashboardV1RequestDashboardOptionsInner>**](embeddableDashboard_v1_request_dashboard_options_inner.md)> | Optional dashboard specific options | [optional]
**color_overrides** | Option<[**Vec<models::EmbeddableDashboardV1RequestColorOverridesInner>**](embeddableDashboard_v1_request_color_overrides_inner.md)> | Optional list of colors to override | [optional]
**bm_group_key_overrides** | Option<[**Vec<models::EmbeddableDashboardV1RequestBmGroupKeyOverridesInner>**](embeddableDashboard_v1_request_bm_group_key_overrides_inner.md)> | Optional list of billable metric group key overrides | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


