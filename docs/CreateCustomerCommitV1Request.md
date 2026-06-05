# CreateCustomerCommitV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | [**uuid::Uuid**](uuid::Uuid.md) |  | 
**r#type** | **String** |  | 
**rate_type** | Option<**String**> |  | [optional]
**name** | Option<**String**> | displayed on invoices | [optional]
**description** | Option<**String**> | Used only in UI/API. It is not exposed to end customers. | [optional]
**priority** | **f64** | If multiple credits or commits are applicable, the one with the lower priority will apply first. | 
**product_id** | [**uuid::Uuid**](uuid::Uuid.md) | ID of the fixed product associated with the commit. This is required because products are used to invoice the commit amount. | 
**access_schedule** | [**models::CreateCustomerCommitV1RequestAccessSchedule**](createCustomerCommit_v1_request_access_schedule.md) |  | 
**invoice_schedule** | Option<[**models::CreateCustomerCommitV1RequestInvoiceSchedule**](createCustomerCommit_v1_request_invoice_schedule.md)> |  | [optional]
**invoice_contract_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | The contract that this commit will be billed on. This is required for \"POSTPAID\" commits and for \"PREPAID\" commits unless there is no invoice schedule above (i.e., the commit is 'free'), or if do_not_invoice is set to true. | [optional]
**applicable_product_ids** | Option<[**Vec<uuid::Uuid>**](uuid::Uuid.md)> | Which products the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_product_tags** | Option<**Vec<String>**> | Which tags the commit applies to. If applicable_product_ids, applicable_product_tags or specifiers are not provided, the commit applies to all products. | [optional]
**applicable_contract_ids** | Option<**Vec<String>**> | Which contract the commit applies to. If not provided, the commit applies to all contracts. | [optional]
**specifiers** | Option<[**Vec<models::GetContractV1200ResponseDataInitialPrepaidBalanceThresholdConfigurationCommitAllOfSpecifiersInner>**](getContract_v1_200_response_data_initial_prepaid_balance_threshold_configuration_commit_allOf_specifiers_inner.md)> | List of filters that determine what kind of customer usage draws down a commit or credit. A customer's usage needs to meet the condition of at least one of the specifiers to contribute to a commit's or credit's drawdown. This field cannot be used together with `applicable_product_ids` or `applicable_product_tags`. | [optional]
**netsuite_sales_order_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**salesforce_opportunity_id** | Option<**String**> | This field's availability is dependent on your client's configuration. | [optional]
**custom_fields** | Option<**std::collections::HashMap<String, String>**> | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | [optional]
**uniqueness_key** | Option<**String**> | Prevents the creation of duplicates. If a request to create a commit or credit is made with a uniqueness key that was previously used to create a commit or credit, a new record will not be created and the request will fail with a 409 error. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


