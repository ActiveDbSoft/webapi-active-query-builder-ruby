=begin
#QueryBuilderApi

#Active Query Builder Web API lets create, analyze and modify SQL queries for different database servers using RESTful HTTP requests to a cloud-based service. It requires SQL execution context (information about database schema and used database server) to be stored under the registered account at https://webapi.activequerybuilder.com/.

OpenAPI spec version: 1.1.3
Contact: support@activedbsoft.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module WebApiActivequerybuilder
  class ActiveQueryBuilderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Returns list of columns for the given SQL query.
    # @param query Information about SQL query and it&#39;s context.
    # @param [Hash] opts the optional parameters
    # @return [Array<QueryColumn>]
    def get_query_columns_post(query, opts = {})
      data, _status_code, _headers = get_query_columns_post_with_http_info(query, opts)
      return data
    end

    # 
    # Returns list of columns for the given SQL query.
    # @param query Information about SQL query and it&#39;s context.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<QueryColumn>, Fixnum, Hash)>] Array<QueryColumn> data, response status code and response headers
    def get_query_columns_post_with_http_info(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveQueryBuilderApi.get_query_columns_post ..."
      end
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling ActiveQueryBuilderApi.get_query_columns_post" if query.nil?
      # resource path
      local_var_path = "/getQueryColumns".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/html']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<QueryColumn>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveQueryBuilderApi#get_query_columns_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Transforms the given SQL query according to the commands provided in this request. You can add constraints, hide some of the resultset columns, chang sorting or limit rows of resultset. All transformations can only lead to reorganization or limitation of the resultset data. This means that it's impossible to get transformed SQL that reveals any other data than the data retutned by original query.
    # @param transform SQL transformation parameters and commands.
    # @param [Hash] opts the optional parameters
    # @return [TransformResult]
    def transform_sql_post(transform, opts = {})
      data, _status_code, _headers = transform_sql_post_with_http_info(transform, opts)
      return data
    end

    # 
    # Transforms the given SQL query according to the commands provided in this request. You can add constraints, hide some of the resultset columns, chang sorting or limit rows of resultset. All transformations can only lead to reorganization or limitation of the resultset data. This means that it&#39;s impossible to get transformed SQL that reveals any other data than the data retutned by original query.
    # @param transform SQL transformation parameters and commands.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransformResult, Fixnum, Hash)>] TransformResult data, response status code and response headers
    def transform_sql_post_with_http_info(transform, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveQueryBuilderApi.transform_sql_post ..."
      end
      # verify the required parameter 'transform' is set
      fail ArgumentError, "Missing the required parameter 'transform' when calling ActiveQueryBuilderApi.transform_sql_post" if transform.nil?
      # resource path
      local_var_path = "/transformSQL".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/html']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/xml']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(transform)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransformResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveQueryBuilderApi#transform_sql_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end