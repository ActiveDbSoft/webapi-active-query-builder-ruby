=begin
#QueryBuilderApi

#Active Query Builder Web API lets create, analyze and modify SQL queries for different database servers using RESTful HTTP requests to a cloud-based service. It requires SQL execution context (information about database schema and used database server) to be stored under the registered account at https://webapi.activequerybuilder.com/.

OpenAPI spec version: 1.0.0
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

require 'spec_helper'
require 'json'

# Unit tests for WebApiActivequerybuilder::ActiveQueryBuilderApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActiveQueryBuilderApi' do
  before do
    # run before each test
    @instance = WebApiActivequerybuilder::ActiveQueryBuilderApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActiveQueryBuilderApi' do
    it 'should create an instact of ActiveQueryBuilderApi' do
      expect(@instance).to be_instance_of(WebApiActivequerybuilder::ActiveQueryBuilderApi)
    end
  end

  # unit tests for get_query_columns_post
  # 
  # Returns list of columns for the given SQL query.
  # @param query Information about SQL query and it&#39;s context.
  # @param [Hash] opts the optional parameters
  # @return [Array<QueryColumn>]
  describe 'get_query_columns_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for transform_sql_post
  # 
  # Transforms the given SQL query according to the commands provided in this request. You can add constraints, hide some of the resultset columns, chang sorting or limit rows of resultset. All transformations can only lead to reorganization or limitation of the resultset data. This means that it&#39;s impossible to get transformed SQL that reveals any other data than the data retutned by original query.
  # @param transform SQL transformation parameters and commands.
  # @param [Hash] opts the optional parameters
  # @return [TransformResult]
  describe 'transform_sql_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
