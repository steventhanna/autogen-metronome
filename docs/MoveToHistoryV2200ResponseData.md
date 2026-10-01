# MoveToHistoryV2200ResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**historical_count** | **f64** | Number of commits successfully moved to historical in this request | 
**historical_commit_ids** | **Vec<uuid::Uuid>** | IDs of the commits that were moved to historical | 
**skipped_count** | **f64** | Number of commits that were skipped due to ineligibility | 
**skipped_reasons** | [**Vec<models::MoveToHistoryV2200ResponseDataSkippedReasonsInner>**](MoveToHistoryV2200ResponseDataSkippedReasonsInner.md) | Per-commit details on why specific commits were not moved to historical | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


