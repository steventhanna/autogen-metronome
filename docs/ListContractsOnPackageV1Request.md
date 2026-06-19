# ListContractsOnPackageV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_id** | **uuid::Uuid** |  | 
**starting_at** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Optional RFC 3339 timestamp. Only include contracts that started on or after this date. This cannot be provided if covering_date filter is provided. | [optional]
**covering_date** | Option<**chrono::DateTime<chrono::FixedOffset>**> | Optional RFC 3339 timestamp. Only include contracts active on the provided date. This cannot be provided if starting_at filter is provided. | [optional]
**include_archived** | Option<**bool**> | Default false. Determines whether to include archived contracts in the results | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


