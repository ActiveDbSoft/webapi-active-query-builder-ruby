# webapi-active-query-builder

WebApiActivequerybuilder - the Ruby gem for the QueryBuilderApi

Active Query Builder Web API lets create, analyze and modify SQL queries for different database servers using RESTful HTTP requests to a cloud-based service. It requires SQL execution context (information about database schema and used database server) to be stored under the registered account at https://webapi.activequerybuilder.com/.

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to *https://webapi.activequerybuilder.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*WebApiActivequerybuilder::ActiveQueryBuilderApi* | [**get_query_columns_post**](docs/ActiveQueryBuilderApi.md#get_query_columns_post) | **POST** /getQueryColumns | 
*WebApiActivequerybuilder::ActiveQueryBuilderApi* | [**transform_sql_post**](docs/ActiveQueryBuilderApi.md#transform_sql_post) | **POST** /transformSQL | 


## Documentation for Models

 - [WebApiActivequerybuilder::Condition](docs/Condition.md)
 - [WebApiActivequerybuilder::ConditionGroup](docs/ConditionGroup.md)
 - [WebApiActivequerybuilder::HiddenColumn](docs/HiddenColumn.md)
 - [WebApiActivequerybuilder::Pagination](docs/Pagination.md)
 - [WebApiActivequerybuilder::QueryColumn](docs/QueryColumn.md)
 - [WebApiActivequerybuilder::Sorting](docs/Sorting.md)
 - [WebApiActivequerybuilder::SqlQuery](docs/SqlQuery.md)
 - [WebApiActivequerybuilder::Totals](docs/Totals.md)
 - [WebApiActivequerybuilder::Transform](docs/Transform.md)
 - [WebApiActivequerybuilder::TransformResult](docs/TransformResult.md)


## Documentation for Authorization

 All endpoints do not require authorization.

