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

# Unit tests for WebApiActivequerybuilder::ConditionGroup
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConditionGroup' do
  before do
    # run before each test
    @instance = WebApiActivequerybuilder::ConditionGroup.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConditionGroup' do
    it 'should create an instact of ConditionGroup' do
      expect(@instance).to be_instance_of(WebApiActivequerybuilder::ConditionGroup)
    end
  end
  describe 'test attribute "junction_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["And", "Or", "Any", "All"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.junction_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "conditions"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "condition_groups"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

