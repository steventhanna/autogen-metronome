# \CreditsAndCommitsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_manual_balance_ledger_entry_v1**](CreditsAndCommitsApi.md#add_manual_balance_ledger_entry_v1) | **POST** /v1/contracts/addManualBalanceLedgerEntry | Add a manual balance entry
[**archive_commit_v2**](CreditsAndCommitsApi.md#archive_commit_v2) | **POST** /v2/contracts/commits/archive | Archive a commit
[**archive_credit_v2**](CreditsAndCommitsApi.md#archive_credit_v2) | **POST** /v2/contracts/credits/archive | Archive a credit
[**create_customer_commit_v1**](CreditsAndCommitsApi.md#create_customer_commit_v1) | **POST** /v1/contracts/customerCommits/create | Create a commit
[**create_customer_credit_v1**](CreditsAndCommitsApi.md#create_customer_credit_v1) | **POST** /v1/contracts/customerCredits/create | Create a credit
[**disable_commit_trueup_v1**](CreditsAndCommitsApi.md#disable_commit_trueup_v1) | **POST** /v1/contracts/commits/disableTrueup | Disable trueup for commit
[**edit_commit_v2**](CreditsAndCommitsApi.md#edit_commit_v2) | **POST** /v2/contracts/commits/edit | Edit a commit
[**edit_credit_v2**](CreditsAndCommitsApi.md#edit_credit_v2) | **POST** /v2/contracts/credits/edit | Edit a credit
[**get_net_balance_v1**](CreditsAndCommitsApi.md#get_net_balance_v1) | **POST** /v1/contracts/customerBalances/getNetBalance | Get the net balance of a customer
[**list_customer_balances_v1**](CreditsAndCommitsApi.md#list_customer_balances_v1) | **POST** /v1/contracts/customerBalances/list | List balances
[**list_customer_commits_v1**](CreditsAndCommitsApi.md#list_customer_commits_v1) | **POST** /v1/contracts/customerCommits/list | List commits
[**list_customer_credits_v1**](CreditsAndCommitsApi.md#list_customer_credits_v1) | **POST** /v1/contracts/customerCredits/list | List credits
[**list_seat_balances_v1**](CreditsAndCommitsApi.md#list_seat_balances_v1) | **POST** /v1/contracts/seatBalances/list | List seat balances
[**release_external_payment_gate_threshold_commit_v1**](CreditsAndCommitsApi.md#release_external_payment_gate_threshold_commit_v1) | **POST** /v1/contracts/commits/threshold-billing/release | Release external payment gate threshold commit
[**retire_commits_v2**](CreditsAndCommitsApi.md#retire_commits_v2) | **POST** /v2/contracts/commits/retire | Retire commits
[**update_commit_end_date_v1**](CreditsAndCommitsApi.md#update_commit_end_date_v1) | **POST** /v1/contracts/customerCommits/updateEndDate | Update the commit end date
[**update_credit_end_date_v1**](CreditsAndCommitsApi.md#update_credit_end_date_v1) | **POST** /v1/contracts/customerCredits/updateEndDate | Update the credit end date



## add_manual_balance_ledger_entry_v1

> add_manual_balance_ledger_entry_v1(add_manual_balance_ledger_entry_v1_request)
Add a manual balance entry

Manually adjust the available balance on a commit or credit. This entry is appended to the commit ledger as a new event. Optionally include a description that provides the reasoning for the entry.  ### Use this endpoint to: - Address incorrect usage burn-down caused by malformed usage or invalid config - Decrease available balance to account for outages where usage may have not been tracked or sent to Metronome - Issue credits to customers in the form of increased balance on existing commit or credit  ### Usage guidelines: Manual ledger entries can be extremely useful for resolving discrepancies in Metronome. However, most corrections to inaccurate billings can be modified upstream of the commit, whether that is via contract editing, rate editing, or other actions that cause an invoice to be recalculated. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**add_manual_balance_ledger_entry_v1_request** | Option<[**AddManualBalanceLedgerEntryV1Request**](AddManualBalanceLedgerEntryV1Request.md)> | Add a manual ledger entry to a balance |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## archive_commit_v2

> models::ArchiveAlertV1200Response archive_commit_v2(archive_commit_v2_request)
Archive a commit

Archive a contract-level or customer-level commit. Use this endpoint to deactivate a commit while preserving historical records. You will not be able to archive a commit until all of the finalized usage invoices the commit has been applied to are voided, and all of the finalized invoices for commit payment have been voided.   Example workflow:  The customer was provisioned a prepaid commit erroneously. It was applied to their most recent finalized usage invoice. - First, void the finalized invoice that the commit was applied to. Also, void the finalized invoice associated with the commit payment.  - Then, use the archiveCommit endpoint to deactivate the commit. - Finally, regenerate the voided invoice. The invoice will be regenerated without the application of the commit, which has now been archived.   ### Usage guidelines: - Once a commit has been archived, it will no longer appear by default on the endpoints `listCustomerCommits` or `listCustomerBalances`. Use the `include_archived` parameter to choose to fetch the details.  - Once a commit has been archived, it has a null ledger and 0 remaining balance.  - Archiving a commit fully deactivates the entire access schedule. If you want to reduce the amount granted in a commit, consider editing the access schedule using the `editCommit` endpoint, or adding a manual ledger entry using the `addManualBalanceLedgerEntry` endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_commit_v2_request** | Option<[**ArchiveCommitV2Request**](ArchiveCommitV2Request.md)> | Customer ID and Commit ID to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## archive_credit_v2

> models::ArchiveAlertV1200Response archive_credit_v2(archive_credit_v2_request)
Archive a credit

Archive a contract-level or customer-level credit. Use this endpoint to deactivate a credit while preserving historical records. You will not be able to archive a credit until all of the finalized invoices the credit has been applied to are voided.   Example workflow:  The customer was granted a free credit erroneously. It was applied to their most recent finalized invoice. - First, void the finalized invoice that the credit was applied to.  - Then, use the archiveCredit endpoint to deactivate the credit.  - Finally, regenerate the voided invoice. The invoice will be regenerated without the application of the credit, which has now been archived.   ### Usage guidelines: - Once a credit has been archived, it will no longer appear by default on the endpoints `listCustomerCredits` or `listCustomerBalances`. Use the `include_archived` parameter to choose to fetch the details.  - Once a credit has been archived, it has a null ledger and 0 remaining balance.  - Archiving a credit fully deactivates the entire access schedule. If you want to reduce the amount granted in a credit, consider editing the access schedule using the `editCredit` endpoint, or adding a manual ledger entry using the `addManualBalanceLedgerEntry` endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_credit_v2_request** | Option<[**ArchiveCreditV2Request**](ArchiveCreditV2Request.md)> | Customer ID and Credit ID to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_customer_commit_v1

> models::ArchiveAlertV1200Response create_customer_commit_v1(create_customer_commit_v1_request)
Create a commit

⚠️ For most contract amendments, use `contracts/edit` directly. Use this endpoint only for cross-contract or enterprise-wide commits.  Creates customer-level commits that establish spending commitments for customers across their Metronome usage. Commits represent contracted spending obligations that can be either prepaid (paid upfront) or postpaid (billed later).  Note: In most cases, you should add commitments directly to customer contracts using the contract/create or contract/edit APIs.  ### Use this endpoint to: Use this endpoint when you need to establish customer-level spending commitments that can be applied across multiple contracts or scoped to specific contracts. Customer-level commits are ideal for: - Enterprise-wide minimum spending agreements that span multiple contracts - Multi-contract volume commitments with shared spending pools - Cross-contract discount tiers based on aggregate usage  #### Commit type Requirements:  - You must specify either \"prepaid\" or \"postpaid\" as the commit type: - Prepaid commits: Customer pays upfront; invoice_schedule is optional (if omitted, creates a commit without an invoice) - Postpaid commits: Customer pays when the commitment expires (the end of the access_schedule); invoice_schedule is required and must match access_schedule totals.   #### Billing configuration: - invoice_contract_id is required for postpaid commits and for prepaid commits with billing (only optional for free prepaid commits) unless do_not_invoice is set to true - For postpaid commits: access_schedule and invoice_schedule must have matching amounts - For postpaid commits: only one schedule item is allowed in both schedules.  #### Scoping flexibility: Customer-level commits can be configured in a few ways: - Contract-specific: Use the `applicable_contract_ids` field to limit the commit to specific contracts - Cross-contract: Leave `applicable_contract_ids` empty to allow the commit to be used across all of the customer's contracts  #### Product targeting: Commits can be scoped to specific products using applicable_product_ids, applicable_product_tags, or specifiers, or left unrestricted to apply to all products.  #### Priority considerations: When multiple commits are applicable, the one with the lower priority value will be consumed first. If there is a tie, contract level commits and credits will be applied before customer level commits and credits. Plan your priority scheme carefully to ensure commits are applied in the desired order.  ### Usage guidelines: ⚠️ Preferred Alternative: In most cases, you should add commits directly to contracts using the create contract or edit contract APIs instead of creating customer-level commits. Contract-level commits provide better organization and are the recommended approach for standard use cases. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_customer_commit_v1_request** | Option<[**CreateCustomerCommitV1Request**](CreateCustomerCommitV1Request.md)> | Create a commit |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_customer_credit_v1

> models::ArchiveAlertV1200Response create_customer_credit_v1(create_customer_credit_v1_request)
Create a credit

⚠️ For most contract amendments, use `contracts/edit` directly. Use this endpoint only for cross-contract or enterprise-wide commits.  Creates customer-level credits that provide spending allowances or free credit balances for customers across their Metronome usage. Note: In most cases, you should add credits directly to customer contracts using the contract/create or contract/edit APIs.  ### Use this endpoint to: Use this endpoint when you need to provision credits directly at the customer level that can be applied across multiple contracts or scoped to specific contracts. Customer-level credits are ideal for: - Customer onboarding incentives that apply globally - Flexible spending allowances that aren't tied to a single contract - Migration scenarios where you need to preserve existing customer balances  #### Scoping flexibility:  Customer-level credits can be configured in two ways: - Contract-specific: Use the applicable_contract_ids field to limit the credit to specific contracts - Cross-contract: Leave applicable_contract_ids empty to allow the credit to be used across all of the customer's contracts  #### Product Targeting:  Credits can be scoped to specific products using `applicable_product_ids` or `applicable_product_tags`, or left unrestricted to apply to all products.  #### Priority considerations:  When multiple credits are applicable, the one with the lower priority value will be consumed first. If there is a tie, contract level commits and credits will be applied before customer level commits and credits. Plan your priority scheme carefully to ensure credits are applied in the desired order.  #### Access Schedule Required:  You must provide an `access_schedule` that defines when and how much credit becomes available to the customer over time. This usually is aligned to the contract schedule or starts immediately and is set to expire in the future.  ### Usage Guidelines: ⚠️ Preferred Alternative: In most cases, you should add credits directly to contracts using the contract/create or contract/edit APIs instead of creating customer-level credits. Contract-level credits provide better organization, and are easier for finance teams to recognize revenue, and are the recommended approach for most use cases. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_customer_credit_v1_request** | Option<[**CreateCustomerCreditV1Request**](CreateCustomerCreditV1Request.md)> | Create a credit |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## disable_commit_trueup_v1

> models::ArchiveAlertV1200Response disable_commit_trueup_v1(disable_commit_trueup_v1_request)
Disable trueup for commit

Disable the true-up invoice for a postpaid commit. If used, the true-up invoice will not be generated.  For postpaid commits, usage during the access period is paid for in arrears. If the total amount paid during the access period is less than the committed amount, there's a final true-up invoice on the invoice_date. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**disable_commit_trueup_v1_request** | Option<[**DisableCommitTrueupV1Request**](DisableCommitTrueupV1Request.md)> | Information to identify the commit |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## edit_commit_v2

> models::ArchiveAlertV1200Response edit_commit_v2(edit_commit_v2_request)
Edit a commit

Edit specific details for a contract-level or customer-level commit. Use this endpoint to modify individual commit access schedules, invoice schedules, applicable products, invoicing contracts, or other fields.   ### Usage guidelines: - As with all edits in Metronome, draft invoices will reflect the edit immediately, while finalized invoices are untouched unless voided and regenerated. - If a commit's invoice schedule item is associated with a finalized invoice, you cannot remove or update the invoice schedule item. - If a commit's invoice schedule item is associated with a voided invoice, you cannot remove the invoice schedule item. - You cannot remove an commit access schedule segment that was applied to a finalized invoice. You can void the invoice beforehand and then remove the access schedule segment. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**edit_commit_v2_request** | Option<[**EditCommitV2Request**](EditCommitV2Request.md)> | Commit and customer IDs and fields to update |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## edit_credit_v2

> models::ArchiveAlertV1200Response edit_credit_v2(edit_credit_v2_request)
Edit a credit

Edit details for a contract-level or customer-level credit.   ### Use this endpoint to:  - Extend the duration or the amount of an existing free credit like a trial  - Modify individual credit access schedules, applicable products, priority, or other fields.   ### Usage guidelines: - As with all edits in Metronome, draft invoices will reflect the edit immediately, while finalized invoices are untouched unless voided and regenerated.  - You cannot remove an access schedule segment that was applied to a finalized invoice. You can void the invoice beforehand and then remove the access schedule segment. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**edit_credit_v2_request** | Option<[**EditCreditV2Request**](EditCreditV2Request.md)> | Credit and customer IDs and fields to update |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_net_balance_v1

> models::GetNetBalanceV1200Response get_net_balance_v1(get_net_balance_v1_request)
Get the net balance of a customer

Retrieve the combined current balance across any grouping of credits and commits for a customer in a single API call. - Display real-time available balance to customers in billing dashboards - Build finance dashboards showing credit utilization across customer segments - Validate expected vs. actual balance during billing reconciliation  ### Key response fields: - `balance`: The combined net balance available to use at this moment across all matching commits and credits - `credit_type_id`: The credit type (fiat or custom pricing unit) the balance is denominated in  ### Filtering options: Balance filters allow you to scope the calculation to specific subsets of commits and credits. When using multiple filter objects, they are OR'd together — if a commit or credit matches any filter, it's included in the net balance. Within a single filter object, all specified conditions are AND'd together. - **Balance types**: Include any combination of `PREPAID_COMMIT`, `POSTPAID_COMMIT`, and `CREDIT` (e.g., `[\"PREPAID_COMMIT\", \"CREDIT\"]` to exclude postpaid commits). If not specified, all balance types are included. - **Specific IDs**: Target exact commit or credit IDs for precise balance queries - **Custom fields**: Filter by custom field key-value pairs; when multiple pairs are provided, commits must match all of them  **Example**: To get the balance of all free-trial credits OR all signup-promotion commits, you'd pass two filter objects — one filtering for CREDIT with custom field campaign: free-trial, and another filtering for PREPAID_COMMIT with custom field campaign: signup-promotion.  ### Usage guidelines: - **Balance ledger details**: Use the [listBalances](https://docs.metronome.com/api-reference/credits-and-commits/list-balances) endpoint instead to understand detailed ledger drawdowns for each individual balance - **Draft invoice handling**: Use `invoice_inclusion_mode` to control whether pending draft invoice deductions are included (`FINALIZED_AND_DRAFT`, the default) or excluded (`FINALIZED`) from the balance calculation - **Account hierarchies**: When querying a child customer, shared commits from parent contracts are not included — query the parent customer directly to see shared commit balances - **Negative balances**: Manual ledger entries can cause negative segment balances; these are treated as zero when calculating the net balance - **Credit types**: If `credit_type_id` is not specified, the balance defaults to USD (cents) 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**get_net_balance_v1_request** | Option<[**GetNetBalanceV1Request**](GetNetBalanceV1Request.md)> | Get the combined net balance for any grouping of credits and commits. |  |

### Return type

[**models::GetNetBalanceV1200Response**](getNetBalance_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_customer_balances_v1

> models::ListCustomerBalancesV1200Response list_customer_balances_v1(list_customer_balances_v1_request)
List balances

Retrieve a comprehensive view of all available balances (commits and credits) for a customer. This endpoint provides real-time visibility into prepaid funds, postpaid commitments, promotional credits, and other balance types that can offset usage charges, helping you build transparent billing experiences.  ### Use this endpoint to: - Display current available balances in customer dashboards - Verify available funds before approving high-usage operations - Generate balance reports for finance teams - Filter balances by contract or date ranges  ### Key response fields: An array of balance objects (all credits and commits) containing:  - Balance details: Current available amount for each commit or credit - Metadata: Product associations, priorities, applicable date ranges - Optional ledger entries: Detailed transaction history (if `include_ledgers=true`) - Balance calculations: Including pending transactions and future-dated entries - Custom fields: Any additional metadata attached to balances  ### Usage guidelines: - Use the [getNetBalance](https://docs.metronome.com/api-reference/credits-and-commits/get-the-net-balance-of-a-customer) endpoint to retrieve a single combined current balance - Date filtering: Use `effective_before` to include only balances with access before a specific date (exclusive) - Set `include_balance=true` for calculated balance amounts on each commit or credit - Set `include_ledgers=true` for full transaction history - Set `include_contract_balances = true` to see contract level balances - Balance logic: Reflects currently accessible amounts, excluding expired/future segments - Manual adjustments: Includes all manual ledger entries, even future-dated ones 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_customer_balances_v1_request** | Option<[**ListCustomerBalancesV1Request**](ListCustomerBalancesV1Request.md)> | List all balances (commits and credits) for a customer |  |

### Return type

[**models::ListCustomerBalancesV1200Response**](listCustomerBalances_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_customer_commits_v1

> models::ListCustomerCommitsV1200Response list_customer_commits_v1(list_customer_commits_v1_request)
List commits

Retrieve all commit agreements for a customer, including both prepaid and postpaid commitments. This endpoint provides comprehensive visibility into contractual spending obligations, enabling you to track commitment utilization and manage customer contracts effectively.  ### Use this endpoint to: - Display commitment balances and utilization in customer dashboards - Track prepaid commitment drawdown and remaining balances - Monitor postpaid commitment progress toward minimum thresholds - Build commitment tracking and forecasting tools - Show commitment history with optional ledger details - Manage rollover balances between contract periods  ### Key response fields: An array of Commit objects containing: - Commit type: PREPAID (pay upfront) or POSTPAID (pay at true-up) - Rate type: COMMIT_RATE (discounted) or LIST_RATE (standard pricing) - Access schedule: When commitment funds become available - Invoice schedule: When the customer is billed - Product targeting: Which product(s) usage is eligible to draw from this commit - Optional ledger entries: Transaction history (if `include_ledgers=true`) - Balance information: Current available amount (if `include_balance=true`) - Rollover settings: Fraction of unused amount that carries forward  ### Usage guidelines: - Pagination: Results limited to 25 commits per page; use 'next_page' for more - Date filtering options:     - `covering_date`: Commits active on a specific date     - `starting_at`: Commits with access on/after a date     - `effective_before`: Commits with access before a date (exclusive) - Scope options:     - `include_contract_commits`: Include contract-level commits (not just customer-level)     - `include_archived`: Include archived commits and commits from archived contracts - Performance considerations:     - include_ledgers: Adds detailed transaction history (slower)     - include_balance: Adds current balance calculation (slower) - Optional filtering: Use commit_id to retrieve a specific commit 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_customer_commits_v1_request** | Option<[**ListCustomerCommitsV1Request**](ListCustomerCommitsV1Request.md)> | List all commits for a customer |  |

### Return type

[**models::ListCustomerCommitsV1200Response**](listCustomerCommits_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_customer_credits_v1

> models::ListCustomerCreditsV1200Response list_customer_credits_v1(list_customer_credits_v1_request)
List credits

Retrieve a detailed list of all credits available to a customer, including promotional credits and contract-specific credits. This endpoint provides comprehensive visibility into credit balances, access schedules, and usage rules, enabling you to build credit management interfaces and track available funding.  ### Use this endpoint to: - Display all available credits in customer billing dashboards - Show credit balances and expiration dates - Track credit usage history with optional ledger details - Build credit management and reporting tools - Monitor promotional credit utilization • Support customer inquiries about available credits  ### Key response fields: An array of Credit objects containing: - Credit details: Name, priority, and which applicable products/tags it applies to - Product ID: The `product_id` of the credit. This is for external mapping into your quote-to-cash stack, not the product it applies to.  - Access schedule: When credits become available and expire - Optional ledger entries: Transaction history (if `include_ledgers=true`) - Balance information: Current available amount (if `include_balance=true`) - Metadata: Custom fields and usage specifiers  ### Usage guidelines: - Pagination: Results limited to 25 commits per page; use next_page for more - Date filtering options:     - `covering_date`: Credits active on a specific date     - `starting_at`: Credits with access on/after a date     - `effective_before`: Credits with access before a date (exclusive) - Scope options:     - `include_contract_credits`: Include contract-level credits (not just customer-level)     - `include_archived`: Include archived credits and credits from archived contracts - Performance considerations:     - `include_ledgers`: Adds detailed transaction history (slower)     - `include_balance`: Adds current balance calculation (slower) - Optional filtering: Use credit_id to retrieve a specific commit 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_customer_credits_v1_request** | Option<[**ListCustomerCreditsV1Request**](ListCustomerCreditsV1Request.md)> | List all credits for a customer |  |

### Return type

[**models::ListCustomerCreditsV1200Response**](listCustomerCredits_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_seat_balances_v1

> models::ListSeatBalancesV1200Response list_seat_balances_v1(list_seat_balances_v1_request)
List seat balances

Retrieve detailed balance for seat-based credits and commits from the contract's subscriptions, broken down by individual seats.  ### Use this endpoint to: - Display per-seat balance information in customer dashboards - Filter balance data by subscription or specific seats  ### Key response fields: An array of seat balance objects containing: - Seat id - Balance: current total balance across all commits and credits  ### Usage guidelines: - Date filtering: use `covering_date` OR `starting_at`/`ending_before` to filter balance data by time range - Set `include_credits_and_commits=true` for detailed commits and credits breakdown per seat - Set `include_ledgers=true` for detailed transaction history per commit/credit per seat 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**list_seat_balances_v1_request** | Option<[**ListSeatBalancesV1Request**](ListSeatBalancesV1Request.md)> | List seat-level balances for commits and credits. |  |

### Return type

[**models::ListSeatBalancesV1200Response**](listSeatBalances_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## release_external_payment_gate_threshold_commit_v1

> release_external_payment_gate_threshold_commit_v1(release_external_payment_gate_threshold_commit_v1_request)
Release external payment gate threshold commit

If using threshold billing with an external payment gateway, Metronome does not facilitate the payment gating process on behalf of the client. As a result, clients must facilitate the transaction themselves. This end-point is used to either release or cancel the commit pending on the outcome of the external payment attempt.  To release the commit, you must pass the `workflow_id` provided in the `payment_gate.external_initiate` webhook.  ### Use this endpoint to: Facilitate payment gating workflows for threshold billing if using a payment gateway Metronome does not support today.  ### Usage guidelines: Ensure that you are set up to consume the `payment_gate.external_initiate` webhook and save the `workflow_id`. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**release_external_payment_gate_threshold_commit_v1_request** | Option<[**ReleaseExternalPaymentGateThresholdCommitV1Request**](ReleaseExternalPaymentGateThresholdCommitV1Request.md)> | Information to identify the workflow that is in progress to release the commit, and what action we should take to complete the workflow. |  |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retire_commits_v2

> models::RetireCommitsV2200Response retire_commits_v2(retire_commits_v2_request)
Retire commits

Retire one or more commits on a contract. Retirement moves fully-depleted, immutable commits into cold storage, making future computations on this customer faster. Retired commits are removed from active code paths but remain retrievable through a dedicated historical view. Set `dry_run` to `true` to preview the result without making changes. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**retire_commits_v2_request** | Option<[**RetireCommitsV2Request**](RetireCommitsV2Request.md)> | Customer, contract, and commit IDs to retire |  |

### Return type

[**models::RetireCommitsV2200Response**](retireCommits_v2_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_commit_end_date_v1

> models::ArchiveAlertV1200Response update_commit_end_date_v1(update_commit_end_date_v1_request)
Update the commit end date

Shortens the end date of a prepaid commit to terminate it earlier than originally scheduled. Use this endpoint when you need to cancel or reduce the duration of an existing prepaid commit. Only works with prepaid commit types and can only move the end date forward (earlier), not extend it.   ### Usage guidelines: To extend commit end dates or make other comprehensive edits, use the 'edit commit' endpoint instead. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_commit_end_date_v1_request** | Option<[**UpdateCommitEndDateV1Request**](UpdateCommitEndDateV1Request.md)> | Update the access or invoice end date of a commit |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_credit_end_date_v1

> models::ArchiveAlertV1200Response update_credit_end_date_v1(update_credit_end_date_v1_request)
Update the credit end date

Shortens the end date of an existing customer credit to terminate it earlier than originally scheduled. Only allows moving end dates forward (earlier), not extending them.   Note: To extend credit end dates or make comprehensive edits, use the 'edit credit' endpoint instead. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_credit_end_date_v1_request** | Option<[**UpdateCreditEndDateV1Request**](UpdateCreditEndDateV1Request.md)> | Update the access end date of a credit |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

