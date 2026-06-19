# EmbeddableDashboardPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | 
**dashboard** | **Dashboard** | The type of dashboard to retrieve. (enum: invoices, usage, commits_and_credits) | 
**dashboard_options** | Option<[**Vec<models::EmbeddableDashboardPayloadDashboardOptionsInner>**](EmbeddableDashboardPayloadDashboardOptionsInner.md)> | Optional dashboard specific options | [optional]
**color_overrides** | Option<[**Vec<models::EmbeddableDashboardPayloadColorOverridesInner>**](EmbeddableDashboardPayloadColorOverridesInner.md)> | Optional list of colors to override | [optional]
**bm_group_key_overrides** | Option<[**Vec<models::EmbeddableDashboardPayloadBmGroupKeyOverridesInner>**](EmbeddableDashboardPayloadBmGroupKeyOverridesInner.md)> | Optional list of billable metric group key overrides | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


