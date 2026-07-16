# \RateCardsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_rate_v1**](RateCardsApi.md#add_rate_v1) | **POST** /v1/contract-pricing/rate-cards/addRate | Add a rate
[**add_rates_v1**](RateCardsApi.md#add_rates_v1) | **POST** /v1/contract-pricing/rate-cards/addRates | Add rates
[**archive_rate_card_v1**](RateCardsApi.md#archive_rate_card_v1) | **POST** /v1/contract-pricing/rate-cards/archive | Archive a rate card
[**create_rate_card_v1**](RateCardsApi.md#create_rate_card_v1) | **POST** /v1/contract-pricing/rate-cards/create | Create a rate card
[**get_rate_card_v1**](RateCardsApi.md#get_rate_card_v1) | **POST** /v1/contract-pricing/rate-cards/get | Get a rate card
[**get_rate_schedule_v1**](RateCardsApi.md#get_rate_schedule_v1) | **POST** /v1/contract-pricing/rate-cards/getRateSchedule | Get a rate schedule
[**get_rates_v1**](RateCardsApi.md#get_rates_v1) | **POST** /v1/contract-pricing/rate-cards/getRates | Get rates
[**list_rate_cards_v1**](RateCardsApi.md#list_rate_cards_v1) | **POST** /v1/contract-pricing/rate-cards/list | List rate cards
[**move_rate_card_products_v1**](RateCardsApi.md#move_rate_card_products_v1) | **POST** /v1/contract-pricing/rate-cards/moveRateCardProducts | Update the rate card products order
[**set_rate_card_products_order_v1**](RateCardsApi.md#set_rate_card_products_order_v1) | **POST** /v1/contract-pricing/rate-cards/setRateCardProductsOrder | Set the rate card products order
[**update_rate_card_v1**](RateCardsApi.md#update_rate_card_v1) | **POST** /v1/contract-pricing/rate-cards/update | Update a rate card



## add_rate_v1

> models::AddRateV1200Response add_rate_v1(add_rate_v1_request)
Add a rate

Add a new rate  This endpoint is heavily rate limited. For adding multiple rates, using the [addRates](https://docs.metronome.com/api-reference/rate-cards/add-rates) endpoint is strongly encouraged. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**add_rate_v1_request** | Option<[**AddRateV1Request**](AddRateV1Request.md)> | Add a new rate |  |

### Return type

[**models::AddRateV1200Response**](addRate_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_rates_v1

> models::ArchiveAlertV1200Response add_rates_v1(add_rates_v1_request)
Add rates

Add new rates 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**add_rates_v1_request** | Option<[**AddRatesV1Request**](AddRatesV1Request.md)> | Add new rates |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## archive_rate_card_v1

> models::ArchiveAlertV1200Response archive_rate_card_v1(archive_alert_v1200_response_data)
Archive a rate card

Permanently disable a rate card by archiving it, preventing use in new contracts while preserving existing contract pricing. Use this when retiring old pricing models, consolidating rate cards, or removing outdated pricing structures. Returns the archived rate card ID and stops the rate card from appearing in contract creation workflows. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | The ID of the rate card to archive |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_rate_card_v1

> models::ArchiveAlertV1200Response create_rate_card_v1(create_rate_card_v1_request)
Create a rate card

In Metronome, the rate card is the central location for your pricing. Rate cards were built with new product launches and pricing changes in mind - you can update your products and pricing in one place, and that change will be automatically propagated across your customer cohorts. Most clients need only maintain one or a few rate cards within Metronome.  ### Use this endpoint to: - Create a rate card with a name and description - Define the rate card's single underlying fiat currency, and any number of conversion rates between that fiat currency and custom pricing units. You can then add products and associated rates in the fiat currency or custom pricing unit for which you have defined a conversion rate.  - Set aliases for the rate card. Aliases are human-readable names that you can use in the place of the id of the rate card when provisioning a customer's contract. By using an alias, you can easily create a contract and provision a customer by choosing the paygo rate card, without storing the rate card id in your internal systems. This is helpful when launching a new rate card for paygo customers, you can update the alias for paygo to be scheduled to be assigned to the new rate card without updating your code.  ### Key response fields: - The ID of the rate card you just created  ### Usage guidelines: - After creating a rate card, you can now use the addRate or addRates endpoints to add products and their prices to it - A rate card alias can only be used by one rate card at a time. If you create a contract with a rate card alias that is already in use by another rate card, the original rate card's alias schedule will be updated. The alias will reference the rate card to which it was most recently assigned. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_rate_card_v1_request** | Option<[**CreateRateCardV1Request**](CreateRateCardV1Request.md)> | In Metronome, the rate card is the central location for your pricing. Rate cards were built with new product launches and pricing changes in mind - you can update your products and pricing in one place, and that change will be automatically propagated across your customer cohorts. Most clients need only maintain one or a few rate cards within Metronome.  ### Use this endpoint to: - Create a rate card with a name and description - Define the rate card's single underlying fiat currency, and any number of conversion rates between that fiat currency and custom pricing units. You can then add products and associated rates in the fiat currency or custom pricing unit for which you have defined a conversion rate.  - Set aliases for the rate card. Aliases are human-readable names that you can use in the place of the id of the rate card when provisioning a customer's contract. By using an alias, you can easily create a contract and provision a customer by choosing the paygo rate card, without storing the rate card id in your internal systems. This is helpful when launching a new rate card for paygo customers, you can update the alias for paygo to be scheduled to be assigned to the new rate card without updating your code.  ### Key response fields: - The ID of the rate card you just created  ### Usage guidelines: - After creating a rate card, you can now use the addRate or addRates endpoints to add products and their prices to it - A rate card alias can only be used by one rate card at a time. If you create a contract with a rate card alias that is already in use by another rate card, the original rate card's alias schedule will be updated. The alias will reference the rate card to which it was most recently assigned.  |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_rate_card_v1

> models::GetRateCardV1200Response get_rate_card_v1(archive_alert_v1200_response_data)
Get a rate card

Return details for a specific rate card including name, description, and aliases. This endpoint does not return rates - use the dedicated getRates or getRateSchedule endpoints to understand the rates on a rate card. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_alert_v1200_response_data** | Option<[**ArchiveAlertV1200ResponseData**](ArchiveAlertV1200ResponseData.md)> | The ID of the rate card to get |  |

### Return type

[**models::GetRateCardV1200Response**](getRateCard_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_rate_schedule_v1

> models::GetRateScheduleV1200Response get_rate_schedule_v1(limit, next_page, get_rate_schedule_v1_request)
Get a rate schedule

A rate card defines the prices that you charge for your products. Rate cards support scheduled changes over time, to allow you to easily roll out pricing changes and new product launches across your customer base. Use this endpoint to understand the rate schedule `starting_at` a given date, optionally filtering the list of rates returned based on product id or pricing group values. For example, you may want to display a schedule of upcoming price changes for a given product in your product experience - use this endpoint to fetch that information from its source of truth in Metronome.   If you want to understand the rates for a specific customer's contract, inclusive of contract-level overrides, use the `getContractRateSchedule` endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**get_rate_schedule_v1_request** | Option<[**GetRateScheduleV1Request**](GetRateScheduleV1Request.md)> | Rate schedule filter options. |  |

### Return type

[**models::GetRateScheduleV1200Response**](getRateSchedule_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_rates_v1

> models::GetRateScheduleV1200Response get_rates_v1(limit, next_page, get_rates_v1_request)
Get rates

Understand the rate schedule at a given timestamp, optionally filtering the list of rates returned based on properties such as `product_id` and `pricing_group_values`. For example, you may want to display the current price for a given product in your product experience - use this endpoint to fetch that information from its source of truth in Metronome.   If you want to understand the rates for a specific customer's contract, inclusive of contract-level overrides, use the `getContractRateSchedule` endpoint. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**get_rates_v1_request** | Option<[**GetRatesV1Request**](GetRatesV1Request.md)> | Rate schedule filter options. |  |

### Return type

[**models::GetRateScheduleV1200Response**](getRateSchedule_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_rate_cards_v1

> models::ListRateCardsV1200Response list_rate_cards_v1(limit, next_page, body)
List rate cards

List all rate cards. Returns rate card IDs, names, descriptions, aliases, and other details. To view the rates associated with a given rate card, use the getRates or getRateSchedule endpoints. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**body** | Option<**serde_json::Value**> |  |  |

### Return type

[**models::ListRateCardsV1200Response**](listRateCards_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## move_rate_card_products_v1

> models::ArchiveAlertV1200Response move_rate_card_products_v1(move_rate_card_products_v1_request)
Update the rate card products order

The ordering of products on a rate card determines the order in which the products will appear on customers' invoices. Use this endpoint to set the order of specific products on the rate card by moving them relative to their current location. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**move_rate_card_products_v1_request** | Option<[**MoveRateCardProductsV1Request**](MoveRateCardProductsV1Request.md)> | New rate card product ordering |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_rate_card_products_order_v1

> models::ArchiveAlertV1200Response set_rate_card_products_order_v1(set_rate_card_products_order_v1_request)
Set the rate card products order

The ordering of products on a rate card determines the order in which the products will appear on customers' invoices. Use this endpoint to set the order of products on the rate card. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_rate_card_products_order_v1_request** | Option<[**SetRateCardProductsOrderV1Request**](SetRateCardProductsOrderV1Request.md)> | New rate card product ordering |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_rate_card_v1

> models::ArchiveAlertV1200Response update_rate_card_v1(update_rate_card_v1_request)
Update a rate card

Update a rate card's name, description, aliases, and credit type conversion rates. This endpoint does not affect underlying pricing rates or schedules.  ### Use this endpoint to: - Rename rate cards: Update display names or descriptions for organizational clarity - Manage aliases: Add, modify, or schedule alias transitions for seamless and code-free rate card migrations - Update documentation: Keep rate card descriptions current with business context - Configure custom pricing units: Add credit type conversions to enable rates with different pricing units  #### Active contract impact: - Alias changes: Already-created contracts continue using their originally assigned rate cards. - Other changes made using this endpoint will only impact the Metronome UI.  #### Grandfathering existing PLG customer pricing: - Rate card aliases support scheduled transitions, enabling seamless rate card migrations for new customers, allowing existing customers to be grandfathered into their existing prices without code. Note that there are multiple mechanisms to support grandfathering in Metronome.   #### How scheduled aliases work for PLG grandfathering: Initial setup: - Add alias to current rate card: Assign a stable alias (e.g., \"standard-pricing\") to your active rate card - Reference alias during contract creation: Configure your self-serve workflow to create contracts using `rate_card_alias` instead of direct `rate_card_id` - Automatic resolution: New contracts referencing the alias automatically resolve to the rate card associated with the alias at the point in time of provisioning  #### Grandfathering process: - Create new rate card: Build your new rate card with updated pricing structure - Schedule alias transition: Add the same alias to the new rate card with a `starting_at` timestamp - Automatic cutover: Starting at the scheduled time, new contracts created in your PLG workflow using that alias will automatically reference the new rate card 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_rate_card_v1_request** | Option<[**UpdateRateCardV1Request**](UpdateRateCardV1Request.md)> | Update a rate card. Must provide at least one of name, description, aliases, or addCreditTypeConversions. |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

