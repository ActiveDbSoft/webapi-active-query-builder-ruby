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
require 'date'

# Unit tests for WebApiActivequerybuilder::Totals
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Totals' do
  before do
    # run before each test
    @instance = WebApiActivequerybuilder::Totals.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Totals' do
    it 'should create an instact of Totals' do
      expect(@instance).to be_instance_of(WebApiActivequerybuilder::Totals)
    end
  end
  describe 'test attribute "field"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "aggregate"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["avg", "count", "max", "min", "sum"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.aggregate = value }.not_to raise_error
       #end
    end
  end

end
