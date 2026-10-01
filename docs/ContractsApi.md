# \ContractsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**amend_contract_v1**](ContractsApi.md#amend_contract_v1) | **POST** /v1/contracts/amend | Amend a contract
[**archive_contract_v1**](ContractsApi.md#archive_contract_v1) | **POST** /v1/contracts/archive | Archive a contract
[**create_contract_v1**](ContractsApi.md#create_contract_v1) | **POST** /v1/contracts/create | Create a contract
[**create_customer_with_contract_v1**](ContractsApi.md#create_customer_with_contract_v1) | **POST** /v1/composite/createCustomerWithContract | Create a customer and provision a contract.
[**create_historical_contract_usage_invoices_v1**](ContractsApi.md#create_historical_contract_usage_invoices_v1) | **POST** /v1/contracts/createHistoricalInvoices | Create historical invoices
[**create_package_v1**](ContractsApi.md#create_package_v1) | **POST** /v1/packages/create | Create a package
[**edit_contract_v2**](ContractsApi.md#edit_contract_v2) | **POST** /v2/contracts/edit | Edit a contract
[**get_contract_edit_history_v2**](ContractsApi.md#get_contract_edit_history_v2) | **POST** /v2/contracts/getEditHistory | Get contract edit history
[**get_contract_rate_schedule_v1**](ContractsApi.md#get_contract_rate_schedule_v1) | **POST** /v1/contracts/getContractRateSchedule | Get the rate schedule for a contract
[**get_contract_v1**](ContractsApi.md#get_contract_v1) | **POST** /v1/contracts/get | Get a contract (v1)
[**get_contract_v2**](ContractsApi.md#get_contract_v2) | **POST** /v2/contracts/get | Get a contract (v2)
[**get_subscription_quantity_history_v1**](ContractsApi.md#get_subscription_quantity_history_v1) | **POST** /v1/contracts/getSubscriptionQuantityHistory | Get subscription quantity history
[**get_subscription_seats_history_v1**](ContractsApi.md#get_subscription_seats_history_v1) | **POST** /v1/contracts/getSubscriptionSeatsHistory | Get subscription seats history
[**list_contracts_on_package_v1**](ContractsApi.md#list_contracts_on_package_v1) | **POST** /v1/packages/listContractsOnPackage | List contracts associated with a package
[**list_contracts_v1**](ContractsApi.md#list_contracts_v1) | **POST** /v1/contracts/list | List customer contracts (v1)
[**list_contracts_v2**](ContractsApi.md#list_contracts_v2) | **POST** /v2/contracts/list | List customer contracts (v2)
[**schedule_pro_services_invoice_v1**](ContractsApi.md#schedule_pro_services_invoice_v1) | **POST** /v1/contracts/scheduleProServicesInvoice | Schedule ProService invoice
[**set_usage_filter_v1**](ContractsApi.md#set_usage_filter_v1) | **POST** /v1/contracts/setUsageFilter | Set a contract usage filter
[**update_contract_end_date_v1**](ContractsApi.md#update_contract_end_date_v1) | **POST** /v1/contracts/updateEndDate | Update the contract end date
[**update_invoice_issue_date_v1**](ContractsApi.md#update_invoice_issue_date_v1) | **POST** /v1/contracts/updateInvoiceIssueDate | Update invoice issue date



## amend_contract_v1

> models::ArchiveAlertV1200Response amend_contract_v1(amend_contract_v1_request)
Amend a contract

Amendments will be replaced by Contract editing. New clients should implement using the `editContract` endpoint. Read more about the migration to contract editing [here](/guides/implement-metronome/migrate-amendments-to-edits/) and contact us via the [Metronome support portal](https://support.metronome.com/) for more details. Once contract editing is enabled, access to this endpoint will be removed. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**amend_contract_v1_request** | Option<[**AmendContractV1Request**](AmendContractV1Request.md)> | Amend a contract |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## archive_contract_v1

> models::ArchiveAlertV1200Response archive_contract_v1(archive_contract_v1_request)
Archive a contract

Permanently end and archive a contract along with all its terms. Any draft invoices will be canceled, and all upcoming scheduled invoices will be voided–also all finalized invoices can optionally be voided. Use this in the event a contract was incorrectly created and needed to be removed from a customer.  #### Impact on commits and credits: When archiving a contract, all associated commits and credits are also archived. For prepaid commits with active segments, Metronome automatically generates expiration ledger entries to close out any remaining balances, ensuring accurate accounting of unused prepaid amounts. These ledger entries will appear in the commit's transaction history with type `PREPAID_COMMIT_EXPIRATION`.  #### Archived contract visibility:  Archived contracts remain accessible for historical reporting and audit purposes. They can be retrieved using the `ListContracts` endpoint by setting the `include_archived` parameter to `true` or in the Metronome UI when the \"Show archived\" option is enabled. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_contract_v1_request** | Option<[**ArchiveContractV1Request**](ArchiveContractV1Request.md)> | Permanently end and archive a contract along with all its terms. Any draft invoices will be canceled, and all upcoming scheduled invoices will be voided–also all finalized invoices can optionally be voided. Use this in the event a contract was incorrectly created and needed to be removed from a customer.  Impact on commits and credits:  When archiving a contract, all associated commits and credits are also archived. For prepaid commits with active segments, Metronome automatically generates expiration ledger entries to close out any remaining balances, ensuring accurate accounting of unused prepaid amounts. These ledger entries will appear in the commit's transaction history with type PREPAID_COMMIT_EXPIRATION.  Archived contract visibility:  Archived contracts remain accessible for historical reporting and audit purposes. They can be retrieved using the `ListContracts` endpoint by setting the `include_archived` parameter to `true` or in the Metronome UI when the \"Show archived\" option is enabled.  |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_contract_v1

> models::CreateContractV1200Response create_contract_v1(create_contract_v1_request)
Create a contract

Contracts define a customer's products, pricing, discounts, access duration, and billing configuration. Contracts serve as the central billing agreement for both PLG and Enterprise customers. You can automatically grant customers access to your products and services directly from your product or CRM.  ### Use this endpoint to: - PLG onboarding: Automatically provision new self-serve customers with contracts when they sign up. - Enterprise sales: Push negotiated contracts from Salesforce with custom pricing and commitments - Promotional pricing: Implement time-limited discounts and free trials through overrides  ### Key components: #### Contract Term and Billing Schedule - Set contract duration using `starting_at` and `ending_before` fields. PLG contracts typically use perpetual agreements (no end date), while Enterprise contracts have fixed end dates which can be edited over time in the case of co-term upsells.  #### Rate Card If you are offering usage based pricing, you can set a rate card for the contract to reference through `rate_card_id` or `rate_card_alias`. The rate card is a store of all of your usage based products and their centralized pricing. Any new products or price changes on the rate card can be set to automatically propagate to all associated contracts - this ensures consistent pricing and product launches flow to contracts without manual updates and migrations. The `usage_statement_schedule` determines the cadence on which Metronome will finalize a usage invoice for the customer. This defaults to monthly on the 1st, with options for custom dates, quarterly, or annual cadences. Note: Most usage based billing companies align usage statements to be evaluated aligned to the first of the month. Read more about [Rate Cards](https://docs.metronome.com/pricing-packaging/create-manage-rate-cards/).  #### Overrides and discounts Customize pricing on the contract through time-bounded overrides that can target specific products, product families, or complex usage scenarios. Overrides enable two key capabilities: - Discounts: Apply percentage discounts, fixed rate reductions, or quantity-based pricing tiers - Entitlements: Provide special pricing or access to specific products for negotiated deals  Read more about [Contract Overrides](https://docs.metronome.com/manage-product-access/add-contract-override/).  #### Commits and Credits Using commits, configure prepaid or postpaid spending commitments where customers promise to spend a certain amount over the contract period paid in advance or in arrears. Use credits to provide free spending allowances. Under the hood these are the same mechanisms, however, credits are typically offered for free (SLA or promotional) or as a part of an allotment associated with a Subscription.  In Metronome, you can set commits and credits to only be applicable for a subset of usage. Use `applicable_product_ids` or `applicable_product_tags` to create product or product-family specific commits or credits, or you can build complex boolean logic specifiers to target usage based on pricing  and presentation group values using `override_specifiers`.  These objects can also also be configured to have a recurrence schedule to easily model customer packaging which includes recurring monthly or quarterly allotments.  Commits support rollover settings (`rollover_fraction`) to transfer unused balances between contract periods, either entirely or as a percentage.  Read more about [Credits and Commits](https://docs.metronome.com/pricing-packaging/apply-credits-commits/).  #### Subscriptions You can add a fixed recurring charge to a contract, like monthly licenses or seat-based fees, using the subscription charge. Subscription charges are defined on your rate card and you can select which subscription is applicable to add to each contract.         When you add a subscription to a contract you need to: - Define whether the subscription is paid for in-advance or in-arrears (`collection_schedule`) - Define the proration behavior (`proration`) - Specify an initial quantity (`initial_quantity`) - Define which subscription rate on the rate card should be used (`subscription_rate`)  Read more about [Subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/).  #### Scheduled Charges Set up one-time, recurring, or entirely custom charges that occur on specific dates, separate from usage-based billing or commitments. These can be used to model non-recurring platform charges or professional services.  #### Threshold Billing Metronome allows you to configure automatic billing triggers when customers reach spending thresholds to prevent fraud and manage risk. You can use `spend_threshold_configuration` to trigger an invoice to cover current charges whenever the threshold is reached or you can ensure the customer maintains a minimum prepaid balance using the `prepaid_balance_configuration`.  Read more about [Spend Threshold](https://docs.metronome.com/manage-product-access/spend-thresholds/) and [Prepaid Balance Thresholds](https://docs.metronome.com/manage-product-access/prepaid-balance-thresholds/).  ### Usage guidelines: - You can always [Edit Contracts](https://docs.metronome.com/manage-product-access/edit-contract/) after it has been created, using the `editContract` endpoint. Metronome keeps track of all edits, both in the audit log and over the `getEditHistory` endpoint. - Customers in Metronome can have multiple concurrent contracts at one time. Use `usage_filters` to route the correct usage to each contract. [Read more about usage filters](https://docs.metronome.com/manage-product-access/provision-customer/#create-a-usage-filter). 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_contract_v1_request** | Option<[**CreateContractV1Request**](CreateContractV1Request.md)> | Create a new contract |  |

### Return type

[**models::CreateContractV1200Response**](createContract_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_customer_with_contract_v1

> models::CreateCustomerWithContractV1200Response create_customer_with_contract_v1(create_customer_with_contract_v1_request)
Create a customer and provision a contract.

Create a new customer and provision a contract. This endpoint's availability is dependent on your client's configuration.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_customer_with_contract_v1_request** | Option<[**CreateCustomerWithContractV1Request**](CreateCustomerWithContractV1Request.md)> | The customer and contract details to create |  |

### Return type

[**models::CreateCustomerWithContractV1200Response**](createCustomerWithContract_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_historical_contract_usage_invoices_v1

> models::PreviewCustomerEventsV1200Response create_historical_contract_usage_invoices_v1(create_historical_contract_usage_invoices_v1_request)
Create historical invoices

Create historical usage invoices for past billing periods on specific contracts. Use this endpoint to generate retroactive invoices with custom usage line items, quantities, and date ranges. Supports preview mode to validate invoice data before creation. Ideal for billing migrations or correcting past billing periods. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_historical_contract_usage_invoices_v1_request** | Option<[**CreateHistoricalContractUsageInvoicesV1Request**](CreateHistoricalContractUsageInvoicesV1Request.md)> | Create a historical usage invoice for a contract |  |

### Return type

[**models::PreviewCustomerEventsV1200Response**](previewCustomerEvents_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_package_v1

> models::ArchiveAlertV1200Response create_package_v1(create_package_v1_request)
Create a package

Create a package that defines a set of reusable, time-relative contract terms that can be used across cohorts of customers. Packages provide an abstraction layer on top of rate cards to provide an easy way to provision customers with standard pricing.   ### **Use this endpoint to:** - Model standard pay-as-you-go pricing packages that can be easily reused across customers - Define standardized contract terms and discounting for sales-led motions - Set aliases for the package to facilitate easy package transition. Aliases are human-readable names that you can use in the place of the id of the package when provisioning a customer’s contract. By using an alias, you can easily create a contract and provision a customer by choosing the “Starter Plan” package, without storing the package ID in your internal systems. This is helpful when launching terms for a package, as you can create a new package with the “Starter Plan” alias scheduled to be assigned without updating your provisioning code.  ### Key input fields: - `starting_at_offset`: Starting date relative to contract start. Generates the `starting_at` date when a contract is provisioned using a package. - `duration`: Duration starting from `starting_at_offset`. Generates the `ending_before` date when a contract is provisioned using a package. - `date_offset`: Date relative to contract start. Used for point-in-time dates without a duration. - `aliases`: Human-readable name to use when provisioning contracts with a package.  ### Usage guidelines: - Use packages for standard self-serve use cases where customers have consistent terms. For customers with negotiated custom contract terms, use the `createContract` endpoint for maximum flexibility. - Billing provider configuration can be set when creating a package by using `billing_provider` and `delivery_method`. To provision a customer successfully with a package, the customer must have one and only one billing provider configuration that matches the billing provider configuration set on the package. - A package alias can only be used by one package at a time. If you create a new package with an alias that is already in use by another package, the original package’s alias schedule will be updated. The alias will reference the package to which it was most recently assigned. - Terms can only be specified using times relative to the contract start date. Supported granularities are: `days`, `weeks`, `months`, `years` - Packages cannot be edited once created. Use the rate card to easily add new rates across all of your customers or make direct edits to a contract after provisioning with a package. Edited contracts will still be associated with the package used during provisioning. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_package_v1_request** | Option<[**CreatePackageV1Request**](CreatePackageV1Request.md)> | Create a new package |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## edit_contract_v2

> models::EditContractV2200Response edit_contract_v2(edit_contract_v2_request)
Edit a contract

The ability to edit a contract helps you react quickly to the needs of your customers and your business.  ### Use this endpoint to: - Encode mid-term commitment and discount changes - Fix configuration mistakes and easily roll back packaging changes  ### Key response fields: - The `id` of the edit - Complete edit details. For example, if you edited the contract to add new overrides and credits, you will receive the IDs of those overrides and credits in the response.  ### Usage guidelines: - When you edit a contract, any draft invoices update immediately to reflect that edit. Finalized invoices remain unchanged - you must void and regenerate them in the UI or API to reflect the edit. - Contract editing must be enabled to use this endpoint. Contact us via the [Metronome support portal](https://support.metronome.com/) to learn more. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**edit_contract_v2_request** | Option<[**EditContractV2Request**](EditContractV2Request.md)> | Contract and customer IDs and fields to update |  |

### Return type

[**models::EditContractV2200Response**](editContract_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_contract_edit_history_v2

> models::GetContractEditHistoryV2200Response get_contract_edit_history_v2(get_contract_edit_history_v2_request)
Get contract edit history

List all the edits made to a contract over time. In Metronome, you can edit a contract at any point after it's created to fix mistakes or reflect changes in terms. Metronome stores a full history of all edits that were ever made to a contract, whether through the UI, `editContract` endpoint, or other endpoints like `updateContractEndDate`.   ### Use this endpoint to:  - Understand what changes were made to a contract, when, and by who  ### Key response fields:  - An array of every edit ever made to the contract - Details on each individual edit - for example showing that in one edit, a user added two discounts and incremented a subscription quantity. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_contract_edit_history_v2_request** | Option<[**GetContractEditHistoryV2Request**](GetContractEditHistoryV2Request.md)> | Contract ID |  |

### Return type

[**models::GetContractEditHistoryV2200Response**](getContractEditHistory_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_contract_rate_schedule_v1

> models::GetContractRateScheduleV1200Response get_contract_rate_schedule_v1(limit, next_page, get_contract_rate_schedule_v1_request)
Get the rate schedule for a contract

For a specific customer and contract, get the rates at a specific point in time. This endpoint takes the contract's rate card into consideration, including scheduled changes. It also takes into account overrides on the contract.   For example, if you want to show your customer a summary of the prices they are paying, inclusive of any negotiated discounts or promotions, use this endpoint. This endpoint only returns rates that are entitled. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**get_contract_rate_schedule_v1_request** | Option<[**GetContractRateScheduleV1Request**](GetContractRateScheduleV1Request.md)> | Contract rate schedule filter options. |  |

### Return type

[**models::GetContractRateScheduleV1200Response**](getContractRateSchedule_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_contract_v1

> models::GetContractV1200Response get_contract_v1(get_contract_v1_request)
Get a contract (v1)

This is the v1 endpoint to get a contract. New clients should implement using the v2 endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_contract_v1_request** | Option<[**GetContractV1Request**](GetContractV1Request.md)> | Contract and customer IDs |  |

### Return type

[**models::GetContractV1200Response**](getContract_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_contract_v2

> models::GetContractV2200Response get_contract_v2(get_contract_v2_request)
Get a contract (v2)

Gets the details for a specific contract, including contract term, rate card information, credits and commits, and more.   ### Use this endpoint to:  - Check the duration of a customer's current contract - Get details on contract terms, including access schedule amounts for commitments and credits - Understand the state of a contract at a past time. As you can evolve the terms of a contract over time through editing, use the `as_of_date` parameter to view the full contract configuration as of that point in time.   ### Usage guidelines:  - Optionally, use the `include_balance` and `include_ledger` fields to include balances and ledgers in the credit and commit responses. Using these fields will cause the query to be slower. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_contract_v2_request** | Option<[**GetContractV2Request**](GetContractV2Request.md)> | Contract and customer IDs |  |

### Return type

[**models::GetContractV2200Response**](getContract_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_subscription_quantity_history_v1

> models::GetSubscriptionQuantityHistoryV1200Response get_subscription_quantity_history_v1(get_subscription_quantity_history_v1_request)
Get subscription quantity history

Get the history of subscription quantities and prices over time for a given `subscription_id`. This endpoint can be used to power an in-product experience where you show a customer their historical changes to seat count. Future changes are not included in this endpoint - use the `getContract` endpoint to view the future scheduled changes to a subscription's quantity.   Subscriptions are used to model fixed recurring fees as well as seat-based recurring fees. To model changes to the number of seats in Metronome, you can increment or decrement the quantity on a subscription at any point in the past or future. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_subscription_quantity_history_v1_request** | Option<[**GetSubscriptionQuantityHistoryV1Request**](GetSubscriptionQuantityHistoryV1Request.md)> |  |  |

### Return type

[**models::GetSubscriptionQuantityHistoryV1200Response**](getSubscriptionQuantityHistory_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_subscription_seats_history_v1

> models::GetSubscriptionSeatsHistoryV1200Response get_subscription_seats_history_v1(get_subscription_seats_history_v1_request)
Get subscription seats history

Get the history of subscription seats schedule over time for a given `subscription_id`. This endpoint provides information about seat assignments and total quantities for different time periods, allowing you to track how seat assignments have changed over time.  ### Use this endpoint to: - Track changes to seat assignments over time - Get seat schedule for a specific date using the `covering_date` parameter - Get seat schedule history with optional date range filtering using `starting_at` and `ending_before`  ### Key response fields: - data: array of seat schedule entries with time periods, quantity, and assignments - next_page: cursor for pagination to retrieve additional results  ### Usage guidelines: - Use `covering_date` to get the active seats for a specific point in time. `covering_date` cannot be used with `starting_at` or `ending_before`. - Use `starting_at` and `ending_before` to filter results by time range. `starting_at` and `ending_before` cannot be used with `covering_date`. - Maximum limit is 10 seat schedule entries per request - Results are ordered by `starting_at` timestamp 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_subscription_seats_history_v1_request** | Option<[**GetSubscriptionSeatsHistoryV1Request**](GetSubscriptionSeatsHistoryV1Request.md)> |  |  |

### Return type

[**models::GetSubscriptionSeatsHistoryV1200Response**](getSubscriptionSeatsHistory_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_contracts_on_package_v1

> models::ListContractsOnPackageV1200Response list_contracts_on_package_v1(limit, next_page, list_contracts_on_package_v1_request)
List contracts associated with a package

For a given package, returns all contract IDs and customer IDs associated with the package over a specific time period.   ### Use this endpoint to: - Understand which customers are provisioned on a package at any given time for internal cohort management - Manage customer migrations to a new package. For example, to migrate all active customers to a new package, call this endpoint, end contracts, and provision customers on a new package.  ### **Usage guidelines:** Use the **`starting_at`**, **`covering_date`**, and **`include_archived`** parameters to filter the list of returned contracts. For example, to list only currently active contracts, pass **`covering_date`** equal to the current time. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**list_contracts_on_package_v1_request** | Option<[**ListContractsOnPackageV1Request**](ListContractsOnPackageV1Request.md)> | Package ID and optional filters |  |

### Return type

[**models::ListContractsOnPackageV1200Response**](listContractsOnPackage_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_contracts_v1

> models::ListContractsV1200Response list_contracts_v1(list_contracts_v1_request)
List customer contracts (v1)

Retrieves a page of contracts for a specific customer, including pricing, terms, credits, and commitments. Use this to view a customer's contract history and current agreements for billing management. Returns contract details with optional ledgers and balance information.  ### Usage guidelines: - Pagination: Results are limited to 20 contracts per page; use 'cursor' for more  ⚠️ Note: This is the legacy v1 endpoint - new integrations should use the v2 endpoint for enhanced features. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_contracts_v1_request** | Option<[**ListContractsV1Request**](ListContractsV1Request.md)> | List all contracts for a customer |  |

### Return type

[**models::ListContractsV1200Response**](listContracts_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_contracts_v2

> models::ListContractsV2200Response list_contracts_v2(list_contracts_v2_request)
List customer contracts (v2)

For a given customer, lists a page of their contracts in chronological order.  ### Use this endpoint to: - Check if a customer is provisioned with any contract, and at which tier - Check the duration and terms of a customer's current contract - Power a page in your end customer experience that shows the customer's history of tiers (e.g. this customer started out on the Pro Plan, then downgraded to the Starter plan).  ### Usage guidelines: Use the `starting_at`, `covering_date`, and `include_archived` parameters to filter the list of returned contracts. For example, to list only currently active contracts, pass `covering_date` equal to the current time.  Results are limited to 20 contracts per page. When the response includes a non-null `cursor`, pass it back as the `cursor` parameter to fetch the next page. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_contracts_v2_request** | Option<[**ListContractsV2Request**](ListContractsV2Request.md)> | Customer ID and optional filters |  |

### Return type

[**models::ListContractsV2200Response**](listContracts_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## schedule_pro_services_invoice_v1

> models::PreviewCustomerEventsV1200Response schedule_pro_services_invoice_v1(schedule_pro_services_invoice_v1_request)
Schedule ProService invoice

Create a new scheduled invoice for Professional Services terms on a contract. This endpoint's availability is dependent on your client's configuration. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**schedule_pro_services_invoice_v1_request** | Option<[**ScheduleProServicesInvoiceV1Request**](ScheduleProServicesInvoiceV1Request.md)> | schedule an invoice for the specified Professional Services terms on a contract |  |

### Return type

[**models::PreviewCustomerEventsV1200Response**](previewCustomerEvents_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_usage_filter_v1

> set_usage_filter_v1(set_usage_filter_v1_request)
Set a contract usage filter

If a customer has multiple contracts with overlapping rates, the usage filter routes usage to the appropriate contract based on a predefined group key.   As an example, imagine you have a customer associated with two projects. Each project is associated with its own contract. You can create a usage filter with group key `project_id` on each contract, and route usage for `project_1` to the first contract and `project_2` to the second contract.   ### Use this endpoint to: - Support enterprise contracting scenarios where multiple contracts are associated to the same customer with the same rates. - Update the usage filter associated with the contract over time.   ### Usage guidelines: To use usage filters, the `group_key` must be defined on the billable metrics underlying the rate card on the contracts. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_usage_filter_v1_request** | Option<[**SetUsageFilterV1Request**](SetUsageFilterV1Request.md)> | Set usage filter for contract |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_contract_end_date_v1

> models::ArchiveAlertV1200Response update_contract_end_date_v1(update_contract_end_date_v1_request)
Update the contract end date

Update or add an end date to a contract. Ending a contract early will impact draft usage statements, truncate any terms, and remove upcoming scheduled invoices. Moving the date into the future will only extend the contract length. Terms and scheduled invoices are not extended. In-advance subscriptions will not be extended. Use this if a contract's end date has changed or if a perpetual contract ends. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_contract_end_date_v1_request** | Option<[**UpdateContractEndDateV1Request**](UpdateContractEndDateV1Request.md)> | Update the end date of a contract |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_invoice_issue_date_v1

> models::ArchiveAlertV1200Response update_invoice_issue_date_v1(update_invoice_issue_date_v1_request)
Update invoice issue date

Updates the issue date of a specific DRAFT invoice within a contract. Use this endpoint to reschedule when an invoice should be issued without affecting future billing cycles or the underlying contract terms. Only works with invoices still in DRAFT status, and the new issue date cannot be later than the contract's end date.   ### Usage guidelines: This only changes the individual invoice's issue date - it does not modify the recurring invoice schedule of associated charges or commits. To update both the issue date and future billing schedule, use the 'edit contract' or 'edit commit' endpoints instead. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_invoice_issue_date_v1_request** | Option<[**UpdateInvoiceIssueDateV1Request**](UpdateInvoiceIssueDateV1Request.md)> | The invoice_id and new issue_date |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

