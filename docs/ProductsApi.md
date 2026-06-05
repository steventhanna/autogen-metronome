# \ProductsApi

All URIs are relative to *https://api.metronome.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_product_list_item_v1**](ProductsApi.md#archive_product_list_item_v1) | **POST** /v1/contract-pricing/products/archive | Archive a product
[**create_product_v1**](ProductsApi.md#create_product_v1) | **POST** /v1/contract-pricing/products/create | Create a product
[**get_product_v1**](ProductsApi.md#get_product_v1) | **POST** /v1/contract-pricing/products/get | Get a product
[**list_products_v1**](ProductsApi.md#list_products_v1) | **POST** /v1/contract-pricing/products/list | List products
[**update_product_v1**](ProductsApi.md#update_product_v1) | **POST** /v1/contract-pricing/products/update | Update a product



## archive_product_list_item_v1

> models::ArchiveAlertV1200Response archive_product_list_item_v1(archive_product_list_item_payload)
Archive a product

Archive a product. Any current rate cards associated with this product will continue to function as normal. However, it will no longer be available as an option for newly created rates. Once you archive a product, you can still retrieve it in the UI and API, but you cannot unarchive it. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**archive_product_list_item_payload** | Option<[**ArchiveProductListItemPayload**](ArchiveProductListItemPayload.md)> | Archive a product |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_product_v1

> models::ArchiveAlertV1200Response create_product_v1(create_product_list_item_payload)
Create a product

Create a new product object. Products in Metronome represent your company's individual product or service offerings. A Product can be thought of as the basic unit of a line item on the invoice. This is analogous to SKUs or items in an ERP system. Give the product a meaningful name as they will appear on customer invoices. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**create_product_list_item_payload** | Option<[**CreateProductListItemPayload**](CreateProductListItemPayload.md)> | Create a new product |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_product_v1

> models::GetProductV1200Response get_product_v1(id)
Get a product

Retrieve a product by its ID, including all metadata and historical changes. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | Option<[**Id**](Id.md)> | The ID of the product to get |  |

### Return type

[**models::GetProductV1200Response**](getProduct_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_products_v1

> models::ListProductsV1200Response list_products_v1(limit, next_page, list_products_payload)
List products

Get a paginated list of all products in your organization with their complete configuration, version history, and metadata. By default excludes archived products unless explicitly requested via the `archive_filter` parameter. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> | Max number of results that should be returned |  |
**next_page** | Option<**String**> | Cursor that indicates where the next page of results should start. |  |
**list_products_payload** | Option<[**ListProductsPayload**](ListProductsPayload.md)> | Get list of products |  |

### Return type

[**models::ListProductsV1200Response**](listProducts_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_product_v1

> models::ArchiveAlertV1200Response update_product_v1(update_product_list_item_payload)
Update a product

Updates a product's configuration while maintaining billing continuity for active customers. Use this endpoint to modify product names, metrics, pricing rules, and composite settings without disrupting ongoing billing cycles. Changes are scheduled using the starting_at timestamp, which must be on an hour boundary—set future dates to schedule updates ahead of time, or past dates for retroactive changes. Returns the updated product ID upon success.   ### Usage guidance:  - Product type cannot be changed after creation. For incorrect product types, create a new product and archive the original instead. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**update_product_list_item_payload** | Option<[**UpdateProductListItemPayload**](UpdateProductListItemPayload.md)> | Updates a product's configuration while maintaining billing continuity for active customers. Use this endpoint to modify product names, metrics, pricing rules, and composite settings without disrupting ongoing billing cycles. Changes are scheduled using the starting_at timestamp, which must be on an hour boundary–set future dates to schedule updates ahead of time, or past dates for retroactive changes. Returns the updated product ID upon success.   Usage guidance:  Product type cannot be changed after creation. For incorrect product types, create a new product and archive the original instead.  |  |

### Return type

[**models::ArchiveAlertV1200Response**](archiveAlert_v1_200_response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

