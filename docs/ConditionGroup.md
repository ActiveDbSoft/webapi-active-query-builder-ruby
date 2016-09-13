# WebApiActivequerybuilder::ConditionGroup

Group of conditions joined with the same boolean operator.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**junction_type** | **String** | Type of junction. All = AND; Any = OR. | [optional] 
**conditions** | [**Array&lt;Condition&gt;**](Condition.md) | List of conditions to join. | [optional] 
**condition_groups** | [**Array&lt;ConditionGroup&gt;**](ConditionGroup.md) | List of nested condition groups to join them with a different boolean operator. | [optional] 


