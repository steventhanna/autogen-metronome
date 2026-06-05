# CreateContractV1RequestHierarchyConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent** | Option<[**models::GetContractV1200ResponseDataInitialHierarchyConfigurationOneOfChildrenInner**](getContract_v1_200_response_data_initial_hierarchy_configuration_oneOf_children_inner.md)> |  | [optional]
**payer** | Option<**String**> | Indicates which customer should pay for the child's invoice charges  **SELF**: The child pays for its own invoice charges  **PARENT**: The parent pays for the child's invoice charges | [optional]
**usage_statement_behavior** | Option<**String**> | Indicates the behavior of the child's invoice statements on the parent's invoices.  **CONSOLIDATE**: Child's invoice statements will be added to parent's consolidated invoices  **SEPARATE**: Child's invoice statements will appear not appear on parent's consolidated invoices | [optional]
**parent_behavior** | Option<[**models::CreateContractV1RequestHierarchyConfigurationParentBehavior**](createContract_v1_request_hierarchy_configuration_parent_behavior.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


