# WebApiActivequerybuilder::Condition

Defines a constraint for original query resultset values.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Column of original query to which a constraint will applied. | [optional] 
**condition_operator** | **String** | Condition operator. | [optional] 
**values** | **Array&lt;String&gt;** | List of values for a constraint. 'IsNull', 'IsNotNull' need no values; 'Between', 'NotBetween' require 2 values; 'In' accepts one or more values; other conditions accept single value only. | [optional] 


