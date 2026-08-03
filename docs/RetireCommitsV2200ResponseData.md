# RetireCommitsV2200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retired_count** | **f64** | Number of commits successfully retired in this request | 
**retired_commit_ids** | **Vec<uuid::Uuid>** | IDs of the commits that were retired | 
**skipped_count** | **f64** | Number of commits that were skipped due to ineligibility | 
**skipped_reasons** | [**Vec<models::RetireCommitsV2200ResponseDataSkippedReasonsInner>**](RetireCommitsV2200ResponseDataSkippedReasonsInner.md) | Per-commit details on why specific commits were not retired | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


