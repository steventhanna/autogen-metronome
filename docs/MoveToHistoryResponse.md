# MoveToHistoryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**historical_count** | **f64** | Number of commits and credits successfully moved to historical in this request | 
**historical_commit_ids** | **Vec<uuid::Uuid>** | IDs of the commits that were moved to historical | 
**historical_credit_ids** | **Vec<uuid::Uuid>** | IDs of the credits that were moved to historical | 
**skipped_commit_reasons** | [**Vec<models::MoveToHistoryResponseSkippedCommitReasonsInner>**](MoveToHistoryResponseSkippedCommitReasonsInner.md) | Per-commit details on why specific commits were not moved to historical | 
**skipped_credit_reasons** | [**Vec<models::MoveToHistoryResponseSkippedCreditReasonsInner>**](MoveToHistoryResponseSkippedCreditReasonsInner.md) | Per-credit details on why specific credits were not moved to historical | 
**skipped_count** | **f64** | Number of commits and credits that were skipped due to ineligibility | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


