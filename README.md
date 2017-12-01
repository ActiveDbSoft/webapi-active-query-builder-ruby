# webapi-active-query-builder

WebApiActivequerybuilder - the Ruby gem for the QueryBuilderApi

Active Query Builder Web API lets create, analyze and modify SQL queries for different database servers using RESTful HTTP requests to a cloud-based service. It requires SQL execution context (information about database schema and used database server) to be stored under the registered account at https://webapi.activequerybuilder.com/.

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'webapi-active-query-builder'

api = WebApiActivequerybuilder::ActiveQueryBuilderApi.new

metadataGuid = 'b3207f4f-b1f4-4dc2-979b-7724ed2d0221'
sql = 'Select customer_id, first_name From customer'

query = WebApiActivequerybuilder::SqlQuery.new # SqlQuery | Information about SQL query and it's context.
query.guid = metadataGuid
query.text = sql

columns = api.get_query_columns_post(query)
p columns

transform = WebApiActivequerybuilder::Transform.new
transform.guid = metadataGuid
transform.sql = sql

filter = WebApiActivequerybuilder::ConditionGroup.new

condition = WebApiActivequerybuilder::Condition.new
condition.field = "customer_id"
condition.condition_operator = "Greater"
condition.values = [10]

filter.conditions = [condition]

page = WebApiActivequerybuilder::Pagination.new
page.skip = 2
page.take = 3

order = WebApiActivequerybuilder::Sorting.new
order.field = "customer_id"
order.order = "asc"

transform.filter = filter
transform.pagination = page
transform.sortings = [order]

result = api.transform_sql_post(transform)
p result
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


## Source code
Full source code of all clients for Active Query Builder Web API is available on GitHub. Get the source code of javascript here: [https://github.com/ActiveDbSoft/webapi-active-query-builder-ruby](https://github.com/ActiveDbSoft/webapi-active-query-builder-ruby)
