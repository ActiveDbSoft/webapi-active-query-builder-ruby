# WebApiActivequerybuilder::ActiveQueryBuilderApi

All URIs are relative to *https://webapi.activequerybuilder.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_query_columns_post**](ActiveQueryBuilderApi.md#get_query_columns_post) | **POST** /getQueryColumns | 
[**transform_sql_post**](ActiveQueryBuilderApi.md#transform_sql_post) | **POST** /transformSQL | 


# **get_query_columns_post**
> Array&lt;QueryColumn&gt; get_query_columns_post(query)



Returns list of columns for the given SQL query.

### Example
```ruby
# load the gem
require 'webapi-active-query-builder'

api_instance = WebApiActivequerybuilder::ActiveQueryBuilderApi.new

query = WebApiActivequerybuilder::SqlQuery.new # SqlQuery | Information about SQL query and it's context.


begin
  result = api_instance.get_query_columns_post(query)
  p result
rescue WebApiActivequerybuilder::ApiError => e
  puts "Exception when calling ActiveQueryBuilderApi->get_query_columns_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**SqlQuery**](SqlQuery.md)| Information about SQL query and it&#39;s context. | 

### Return type

[**Array&lt;QueryColumn&gt;**](QueryColumn.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/xml
 - **Accept**: application/json, text/html



# **transform_sql_post**
> TransformResult transform_sql_post(transform)



Transforms the given SQL query according to the commands provided in this request. You can add constraints, hide some of the resultset columns, chang sorting or limit rows of resultset. All transformations can only lead to reorganization or limitation of the resultset data. This means that it's impossible to get transformed SQL that reveals any other data than the data retutned by original query.

### Example
```ruby
# load the gem
require 'webapi-active-query-builder'

api_instance = WebApiActivequerybuilder::ActiveQueryBuilderApi.new

transform = WebApiActivequerybuilder::Transform.new # Transform | SQL transformation parameters and commands.


begin
  result = api_instance.transform_sql_post(transform)
  p result
rescue WebApiActivequerybuilder::ApiError => e
  puts "Exception when calling ActiveQueryBuilderApi->transform_sql_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transform** | [**Transform**](Transform.md)| SQL transformation parameters and commands. | 

### Return type

[**TransformResult**](TransformResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/xml
 - **Accept**: application/json, text/html



