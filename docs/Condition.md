# WebApiActivequerybuilder::Condition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Column of original query to which a constraint will applied. | [optional] 
**condition_operator** | **String** | Condition operator. | [optional] 
**values** | **Array&lt;String&gt;** | List of values for a constraint. \&quot;IsNull\&quot;, \&quot;IsNotNull\&quot; need no values; \&quot;Between\&quot;, \&quot;NotBetween\&quot; require 2 values; \&quot;In\&quot; accepts one or more values; other conditions accept single value only. | [optional] 


