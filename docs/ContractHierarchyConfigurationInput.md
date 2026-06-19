# ContractHierarchyConfigurationInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent** | Option<[**models::ContractParentHierarchyConfigurationInput**](ContractParentHierarchyConfigurationInput.md)> |  | [optional]
**payer** | Option<**Payer**> | Indicates which customer should pay for the child's invoice charges  **SELF**: The child pays for its own invoice charges  **PARENT**: The parent pays for the child's invoice charges (enum: SELF, PARENT, self, parent) | [optional]
**usage_statement_behavior** | Option<**UsageStatementBehavior**> | Indicates the behavior of the child's invoice statements on the parent's invoices.  **CONSOLIDATE**: Child's invoice statements will be added to parent's consolidated invoices  **SEPARATE**: Child's invoice statements will appear not appear on parent's consolidated invoices (enum: CONSOLIDATE, SEPARATE, consolidate, separate) | [optional]
**parent_behavior** | Option<[**models::ContractHierarchyConfigurationInputParentBehavior**](ContractHierarchyConfigurationInputParentBehavior.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


