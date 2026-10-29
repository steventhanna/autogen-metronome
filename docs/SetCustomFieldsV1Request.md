# SetCustomFieldsV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity** | **Entity** |  (enum: alert, billable_metric, charge, commit, contract_credit, contract_product, contract, customer, discount, invoice, professional_service, product, rate_card, scheduled_charge, subscription, package_commit, package_credit, package_subscription, package_scheduled_charge) | 
**entity_id** | **uuid::Uuid** |  | 
**custom_fields** | **std::collections::HashMap<String, String>** | Custom fields to be added eg. { \"key1\": \"value1\", \"key2\": \"value2\" } | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


