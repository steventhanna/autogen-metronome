# \CustomersApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_customer_billing_provider_configurations_v1**](CustomersApi.md#archive_customer_billing_provider_configurations_v1) | **POST** /v1/archiveCustomerBillingProviderConfigurations | Archive billing provider configurations for a customer
[**archive_customer_revenue_system_configurations_v1**](CustomersApi.md#archive_customer_revenue_system_configurations_v1) | **POST** /v1/archiveCustomerRevenueSystemConfigurations | Archive revenue system configurations for a customer
[**archive_customer_v1**](CustomersApi.md#archive_customer_v1) | **POST** /v1/customers/archive | Archive a customer
[**create_customer_v1**](CustomersApi.md#create_customer_v1) | **POST** /v1/customers | Create a customer
[**embeddable_dashboard_v1**](CustomersApi.md#embeddable_dashboard_v1) | **POST** /v1/dashboards/getEmbeddableUrl | Get an embeddable customer dashboard
[**get_customer_billing_provider_configurations_v1**](CustomersApi.md#get_customer_billing_provider_configurations_v1) | **POST** /v1/getCustomerBillingProviderConfigurations | Fetch billing provider configurations for a customer
[**get_customer_revenue_system_configurations_v1**](CustomersApi.md#get_customer_revenue_system_configurations_v1) | **POST** /v1/getCustomerRevenueSystemConfigurations | Fetch revenue system configurations for a customer
[**get_customer_v1**](CustomersApi.md#get_customer_v1) | **GET** /v1/customers/{customer_id} | Get a customer
[**list_customers_v1**](CustomersApi.md#list_customers_v1) | **GET** /v1/customers | List customers
[**set_customer_billable_status_v1**](CustomersApi.md#set_customer_billable_status_v1) | **POST** /v1/customers/setBillableStatus | Set customer billable status
[**set_customer_billing_provider_configurations_v1**](CustomersApi.md#set_customer_billing_provider_configurations_v1) | **POST** /v1/setCustomerBillingProviderConfigurations | Set billing provider configurations for a customer
[**set_customer_name_v1**](CustomersApi.md#set_customer_name_v1) | **POST** /v1/customers/{customer_id}/setName | Update a customer name
[**set_customer_revenue_system_configurations_v1**](CustomersApi.md#set_customer_revenue_system_configurations_v1) | **POST** /v1/setCustomerRevenueSystemConfigurations | Set revenue system configurations for a customer
[**set_ingest_aliases_v1**](CustomersApi.md#set_ingest_aliases_v1) | **POST** /v1/customers/{customer_id}/setIngestAliases | Create or update customer ingest aliases
[**update_customer_config_v1**](CustomersApi.md#update_customer_config_v1) | **POST** /v1/customers/{customer_id}/updateConfig | Update a customer configuration



## archive_customer_billing_provider_configurations_v1

> models::ArchiveCustomerBillingProviderConfigurationsV1200Response archive_customer_billing_provider_configurations_v1(archive_customer_billing_provider_configurations_v1_request)
Archive billing provider configurations for a customer

Deprecate an existing billing configuration for a customer to handle churn or billing and collection preference changes. Archiving a billing configuration takes effect immediately. If there are active contracts using the configuration, Metronome will archive the configuration on the contract and immediately stop metering to downstream systems.  ### Use this endpoint to: - Remove billing provider customer data and configurations when no longer needed - Clean up test or deprecated billing provider configurations - Free up uniqueness keys for reuse with new billing provider configurations - Disable threshold recharge configurations associated with archived billing providers  ### Key response fields: A successful response returns: - `success`: Boolean indicating the operation completed successfully - `error`: Null on success, error message on failure  ### Usage guidelines: - Archiving a contract configuration during a grace period will result in the invoice not being sent to the customer - Automatically disables both spend-based and credit-based threshold recharge configurations for contracts using the archived billing provider         - You can archive multiple configurations for a single customer in a single request, but any validation failures for an individual configuration will prevent the entire operation from succeeding 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_customer_billing_provider_configurations_v1_request** | Option<[**ArchiveCustomerBillingProviderConfigurationsV1Request**](ArchiveCustomerBillingProviderConfigurationsV1Request.md)> | The ids of the billing provider configurations to archive |  |

### Return type

[**models::ArchiveCustomerBillingProviderConfigurationsV1200Response**](archiveCustomerBillingProviderConfigurations_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## archive_customer_revenue_system_configurations_v1

> models::ArchiveCustomerRevenueSystemConfigurationsV1200Response archive_customer_revenue_system_configurations_v1(archive_customer_revenue_system_configurations_v1_request)
Archive revenue system configurations for a customer

Archive existing revenue system configurations for a customer. Archiving a revenue system configuration takes effect immediately.  ### Use this endpoint to: - Remove revenue system configurations when no longer needed - Clean up test or deprecated revenue system configurations  ### Key response fields: A successful response returns: - `customer_id`: The customer ID the configurations belong to - `customer_revenue_system_configuration_ids`: The archived configuration IDs 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_customer_revenue_system_configurations_v1_request** | Option<[**ArchiveCustomerRevenueSystemConfigurationsV1Request**](ArchiveCustomerRevenueSystemConfigurationsV1Request.md)> | The ids of the revenue system configurations to archive |  |

### Return type

[**models::ArchiveCustomerRevenueSystemConfigurationsV1200Response**](archiveCustomerRevenueSystemConfigurations_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## archive_customer_v1

> models::ArchiveAlertV1200Response archive_customer_v1(archive_alert_v1200_response_data)
Archive a customer

Use this endpoint to archive a customer while preserving auditability. Archiving a customer will automatically archive all contracts as of the current date and void all corresponding invoices. Use this endpoint if a customer is onboarded by mistake.  ### Usage guidelines: - Once a customer is archived, it cannot be unarchived. - Archived customers can still be viewed through the API or the UI for audit purposes.  - Ingest aliases remain idempotent for archived customers. In order to reuse an ingest alias, first remove the ingest alias from the customer prior to archiving. - Any notifications associated with the customer will no longer be triggered. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | The ID of the customer to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_customer_v1

> models::CreateCustomerV1200Response create_customer_v1(create_customer_v1_request)
Create a customer

Create a new customer in Metronome and optionally the billing configuration (recommended) which dictates where invoices for the customer will be sent or where payment will be collected.   ### Use this endpoint to: Execute your customer provisioning workflows for either PLG motions, where customers originate in your platform, or SLG motions, where customers originate in your sales system.  ### Key response fields:  This end-point returns the `customer_id` created by the request. This id can be used to fetch relevant billing configurations and create contracts.  ### Example workflow: - Generally, Metronome recommends first creating the customer in the downstream payment / ERP system when payment method is collected and then creating the customer in Metronome using the response (i.e. `customer_id`) from the downstream system. If you do not create a billing configuration on customer creation, you can add it later.         - Once a customer is created, you can then create a contract for the customer. In the contract creation process, you will need to add the customer billing configuration to the contract to ensure Metronome invoices the customer correctly. This is because a customer can have multiple configurations. - As part of the customer creation process, set the ingest alias for the customer which will ensure usage is accurately mapped to the customer. Ingest aliases can be added or changed after the creation process as well.  ### Usage guidelines: For details on different billing configurations for different systems, review the `/setCustomerBillingConfiguration` end-point. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_customer_v1_request** | Option<[**CreateCustomerV1Request**](CreateCustomerV1Request.md)> | The customer to create |  |

### Return type

[**models::CreateCustomerV1200Response**](createCustomer_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## embeddable_dashboard_v1

> models::EmbeddableDashboardV1200Response embeddable_dashboard_v1(embeddable_dashboard_v1_request)
Get an embeddable customer dashboard

Generate secure, embeddable dashboard URLs that allow you to seamlessly integrate Metronome's billing visualizations directly into your application. This endpoint creates authenticated iframe-ready URLs for customer-specific dashboards, providing a white-labeled billing experience without building custom UI.  ### Use this endpoint to: - Embed billing dashboards directly in your customer portal or admin interface - Provide self-service access to invoices, usage data, and credit balances - Build white-labeled billing experiences with minimal development effort  ### Key response fields: - A secure, time-limited URL that can be embedded in an iframe - The URL includes authentication tokens and configuration parameters - URLs are customer-specific and respect your security settings  ### Usage guidelines: - Dashboard types: Choose from `invoices`, `usage`, or `commits_and_credits` - Customization options:     - `dashboard_options`: Configure dashboard behavior. Supported for the invoices dashboard only. Available keys include: `show_zero_usage_line_items` (\"true\"/\"false\"), `contract_id` (UUID, filters invoices by contract), `invoice_type` (\"USAGE\" or \"SCHEDULED\", filters by invoice type), and `invoice_status_filter` (\"VOID\", \"FINALIZED\", \"DRAFT\", \"FINALIZED_AND_DRAFT\", or \"ALL\")     - `color_overrides`: Match your brand's color palette - Iframe implementation: Embed the returned URL directly in an iframe element - Responsive design: Dashboards automatically adapt to container dimensions 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**embeddable_dashboard_v1_request** | Option<[**EmbeddableDashboardV1Request**](EmbeddableDashboardV1Request.md)> | The details of the dashboard to retrieve |  |

### Return type

[**models::EmbeddableDashboardV1200Response**](embeddableDashboard_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_customer_billing_provider_configurations_v1

> models::GetCustomerBillingProviderConfigurationsV1200Response get_customer_billing_provider_configurations_v1(get_customer_billing_provider_configurations_v1_request)
Fetch billing provider configurations for a customer

Returns all billing configurations previously set for the customer. Use during the contract provisioning process to fetch the `billing_provider_configuration_id` needed to set the contract billing configuration. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_customer_billing_provider_configurations_v1_request** | Option<[**GetCustomerBillingProviderConfigurationsV1Request**](GetCustomerBillingProviderConfigurationsV1Request.md)> | The customer id for which to fetch billing provider configurations |  |

### Return type

[**models::GetCustomerBillingProviderConfigurationsV1200Response**](getCustomerBillingProviderConfigurations_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_customer_revenue_system_configurations_v1

> models::GetCustomerRevenueSystemConfigurationsV1200Response get_customer_revenue_system_configurations_v1(get_customer_revenue_system_configurations_v1_request)
Fetch revenue system configurations for a customer

Returns all revenue system configurations previously set for the customer. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_customer_revenue_system_configurations_v1_request** | Option<[**GetCustomerRevenueSystemConfigurationsV1Request**](GetCustomerRevenueSystemConfigurationsV1Request.md)> | The customer id for which to fetch revenue system configurations |  |

### Return type

[**models::GetCustomerRevenueSystemConfigurationsV1200Response**](getCustomerRevenueSystemConfigurations_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_customer_v1

> models::GetCustomerV1200Response get_customer_v1(customer_id)
Get a customer

Get detailed information for a specific customer by their Metronome ID. Returns customer profile data including name, creation date, ingest aliases, configuration settings, and custom fields. Use this endpoint to fetch complete customer details for billing operations or account management.  Note: If searching for a customer billing configuration, use the `/getCustomerBillingConfigurations` endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |

### Return type

[**models::GetCustomerV1200Response**](getCustomer_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_customers_v1

> models::ListCustomersV1200Response list_customers_v1(limit, next_page, ingest_alias, customer_ids, only_archived, salesforce_account_ids)
List customers

Gets a paginated list of all customers in your Metronome account. Use this endpoint to browse your customer base, implement customer search functionality, or sync customer data with external systems. Returns customer details including IDs, names, and configuration settings. Supports filtering and pagination parameters for efficient data retrieval. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**ingest_alias** | Option<**String**> | Filter the customer list by ingest_alias |  |
**customer_ids** | Option<[**Vec<String>**](String.md)> | Filter the customer list by customer_id.  Up to 100 ids can be provided. |  |
**only_archived** | Option<**bool**> | Filter the customer list to only return archived customers. By default, only active customers are returned. |  |
**salesforce_account_ids** | Option<[**Vec<String>**](String.md)> | Filter the customer list by salesforce_account_id.  Up to 100 ids can be provided. |  |

### Return type

[**models::ListCustomersV1200Response**](listCustomers_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_customer_billable_status_v1

> models::SetCustomerBillableStatusV1200Response set_customer_billable_status_v1(set_customer_billable_status_v1_request)
Set customer billable status

Set a customer's billable status. This endpoint's availability is dependent on your client's configuration. Metronome 1.0 plan invoices are not supported.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_customer_billable_status_v1_request** | Option<[**SetCustomerBillableStatusV1Request**](SetCustomerBillableStatusV1Request.md)> |  |  |

### Return type

[**models::SetCustomerBillableStatusV1200Response**](setCustomerBillableStatus_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_customer_billing_provider_configurations_v1

> models::SetCustomerBillingProviderConfigurationsV1200Response set_customer_billing_provider_configurations_v1(set_customer_billing_provider_configurations_v1_request)
Set billing provider configurations for a customer

Create a billing configuration for a customer. Once created, these configurations are available to associate to a contract and dictates which downstream system to collect payment in or send the invoice to. You can create multiple configurations per customer. The configuration formats are distinct for each downstream provider.  ### Use this endpoint to: - Add the initial configuration to an existing customer. Once created, the billing configuration can then be associated to the customer's contract. - Add a new configuration to an existing customer. This might be used as part of an upgrade or downgrade workflow where the customer was previously billed through system A (e.g. Stripe) but will now be billed through system B (e.g. AWS). Once created, the new configuration can then be associated to the customer's contract. - Multiple configurations can be added per destination. For example, you can create two Stripe billing configurations for a Metronome customer that each have a distinct `collection_method`.  ### Delivery method options: - `direct_to_billing_provider`: Use when Metronome should send invoices directly to the billing provider's API (e.g., Stripe, NetSuite). This is the most common method for automated billing workflows. - `tackle`: Use specifically for AWS Marketplace transactions that require Tackle's co-selling platform for partner attribution and commission tracking. - `aws_sqs`: Use when you want invoice data delivered to an AWS SQS queue for custom processing before sending to your billing system. - `aws_sns`: Use when you want invoice notifications published to an AWS SNS topic for event-driven billing workflows.  ### Key response fields:  The id for the customer billing configuration. This id can be used to associate the billing configuration to a contract.  ### Usage guidelines: Must use the `delivery_method_id` if you have multiple Stripe accounts connected to Metronome. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_customer_billing_provider_configurations_v1_request** | Option<[**SetCustomerBillingProviderConfigurationsV1Request**](SetCustomerBillingProviderConfigurationsV1Request.md)> | The details of the billing provider configurations to insert |  |

### Return type

[**models::SetCustomerBillingProviderConfigurationsV1200Response**](setCustomerBillingProviderConfigurations_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_customer_name_v1

> models::CreateCustomerV1200Response set_customer_name_v1(customer_id, update_billable_metric_v1_request)
Update a customer name

Updates the display name for a customer record. Use this to correct customer names, update business names after rebranding, or maintain accurate customer information for invoicing and reporting. Returns the updated customer object with the new name applied immediately across all billing documents and interfaces. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**update_billable_metric_v1_request** | Option<[**UpdateBillableMetricV1Request**](UpdateBillableMetricV1Request.md)> | The customer name |  |

### Return type

[**models::CreateCustomerV1200Response**](createCustomer_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_customer_revenue_system_configurations_v1

> models::GetCustomerRevenueSystemConfigurationsV1200Response set_customer_revenue_system_configurations_v1(set_customer_revenue_system_configurations_v1_request)
Set revenue system configurations for a customer

Create a revenue system configuration for a customer. Once created, these configurations are available to associate to a contract and dictates which downstream system to use for revenue workflows. The configuration formats are distinct for each downstream provider.  ### Use this endpoint to: - Add the initial configuration to an existing customer. Once created, the revenue system configuration can then be associated to the customer's contract. - Add a new configuration to an existing customer.  ### Key response fields:  Returns the inserted configuration objects, including the id of the revenue system configuration(s). These ids can be used to associate a revenue system to a contract. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_customer_revenue_system_configurations_v1_request** | Option<[**SetCustomerRevenueSystemConfigurationsV1Request**](SetCustomerRevenueSystemConfigurationsV1Request.md)> | The details of the revenue system configurations to insert |  |

### Return type

[**models::GetCustomerRevenueSystemConfigurationsV1200Response**](getCustomerRevenueSystemConfigurations_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_ingest_aliases_v1

> set_ingest_aliases_v1(customer_id, set_ingest_aliases_v1_request)
Create or update customer ingest aliases

Sets the ingest aliases for a customer. Use this endpoint to associate a Metronome customer with an internal ID for easier tracking between systems. Ingest aliases can be used in the `customer_id` field when sending usage events to Metronome.   ### Usage guidelines: - This call is idempotent and fully replaces the set of ingest aliases for the given customer. - Switching an ingest alias from one customer to another will associate all corresponding usage to the new customer. - Use multiple ingest aliases to model child organizations within a single Metronome customer. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**set_ingest_aliases_v1_request** | Option<[**SetIngestAliasesV1Request**](SetIngestAliasesV1Request.md)> | The aliases to add |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_customer_config_v1

> update_customer_config_v1(customer_id, update_customer_config_v1_request)
Update a customer configuration

Update configuration settings for a specific customer, such as external system integrations (e.g., Salesforce account ID) and other customer-specific billing parameters. Use this endpoint to modify customer configurations without affecting core customer data like name or ingest aliases. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**customer_id** | **uuid::Uuid** |  | [required] |
**update_customer_config_v1_request** | Option<[**UpdateCustomerConfigV1Request**](UpdateCustomerConfigV1Request.md)> | The configuration for a specific customer |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

