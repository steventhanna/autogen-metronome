# BalanceFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance_types** | Option<**Vec<BalanceTypes>**> | The balance type to filter by. (enum: PREPAID_COMMIT, POSTPAID_COMMIT, CREDIT) | [optional]
**ids** | Option<**Vec<uuid::Uuid>**> | Specific IDs to compute balance across. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to compute balance across. Must match all custom fields | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


