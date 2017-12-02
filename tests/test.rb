require 'test/unit'
require 'webapi-active-query-builder'
include WebApiActivequerybuilder

class MyTest < Test::Unit::TestCase
  def setup
    @api = ActiveQueryBuilderApi.new

    @transform = Transform.new
    @transform.guid = @guid = 'b3207f4f-b1f4-4dc2-979b-7724ed2d0221'
    @transform.sql = @sql = 'select customer_id, first_name, last_name, create_date from customer'
  end

  def teardown
    @api = nil
    @transform = nil
  end

  def test_avg
    avg = Totals.new
    avg.field = "first_name"
    avg.aggregate = "avg"

    @transform.totals = [avg]

    result = @api.transform_sql_post(@transform)

    correct = "Select Avg(q.first_name) as first_nameavg From (Select customer.customer_id customer_id, customer.first_name first_name, customer.last_name last_name, customer.create_date create_date From customer) q"
    assert_equal(result.totals.downcase, correct.downcase)
  end

  def test_count
    count = Totals.new
    count.field = "first_name"
    count.aggregate = "count"

    @transform.totals = [count]

    result = @api.transform_sql_post(@transform)

    correct = "Select Count(q.first_name) as first_namecount From (Select customer.customer_id customer_id, customer.first_name first_name, customer.last_name last_name, customer.create_date create_date From customer) q"
    assert_equal(result.totals.downcase, correct.downcase)
  end

  def test_max
    max = Totals.new
    max.field = "first_name"
    max.aggregate = "max"

    @transform.totals = [max]

    result = @api.transform_sql_post(@transform)

    correct = "Select Max(q.first_name) as first_namemax From (Select customer.customer_id customer_id, customer.first_name first_name, customer.last_name last_name, customer.create_date create_date From customer) q"
    assert_equal(result.totals.downcase, correct.downcase)
  end

  def test_min
    min = Totals.new
    min.field = "first_name"
    min.aggregate = "min"

    @transform.totals = [min]

    result = @api.transform_sql_post(@transform)

    correct = "Select Min(q.first_name) as first_namemin From (Select customer.customer_id customer_id, customer.first_name first_name, customer.last_name last_name, customer.create_date create_date From customer) q"
    assert_equal(result.totals.downcase, correct.downcase)
  end

  def test_sum
    sum = Totals.new
    sum.field = "first_name"
    sum.aggregate = "sum"

    @transform.totals = [sum]

    result = @api.transform_sql_post(@transform)

    correct = "Select Sum(q.first_name) as first_namesum From (Select customer.customer_id customer_id, customer.first_name first_name, customer.last_name last_name, customer.create_date create_date From customer) q"
    assert_equal(result.totals.downcase, correct.downcase)
  end

  def test_paging
    page = Pagination.new
    page.skip = 2
    page.take = 3

    @transform.pagination = page

    result = @api.transform_sql_post(@transform)

    correct = "select customer.customer_id, customer.first_name, customer.last_name, customer.create_date from customer limit 3 offset 2"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_order
    order = Sorting.new
    order.field = "customer_id"
    order.order = "asc"

    @transform.sortings = [order]

    result = @api.transform_sql_post(@transform)

    correct = "Select customer.customer_id, customer.first_name, customer.last_name, customer.create_date From customer order by customer.customer_id"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_order_desc
    order = Sorting.new
    order.field = "customer_id"
    order.order = "desc"

    @transform.sortings = [order]

    result = @api.transform_sql_post(@transform)

    correct = "Select customer.customer_id, customer.first_name, customer.last_name, customer.create_date From customer order by customer.customer_id desc"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_hide_column
    column = HiddenColumn.new
    column.field = "first_name"

    @transform.hidden_columns = [column]

    result = @api.transform_sql_post(@transform)

    correct = "select q.customer_id, q.last_name, q.create_date from (select customer.customer_id customer_id, customer.first_name first_name, customer.last_name last_name, customer.create_date create_date from customer) q"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_filter_contains
    filter = ConditionGroup.new

    condition = Condition.new
    condition.field = "first_name"
    condition.condition_operator = "Contains"
    condition.values = ["Orlando"]

    filter.conditions = [condition]

    @transform.filter = filter

    result = @api.transform_sql_post(@transform)

    correct = "select customer.customer_id, customer.first_name, customer.last_name, customer.create_date from customer where customer.first_name like '%Orlando%'"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_filter_less
    filter = ConditionGroup.new

    condition = Condition.new
    condition.field = "customer_id"
    condition.condition_operator = "Less"
    condition.values = [5]

    filter.conditions = [condition]

    @transform.filter = filter

    result = @api.transform_sql_post(@transform)

    correct = "select customer.customer_id, customer.first_name, customer.last_name, customer.create_date from customer where customer.customer_id < 5"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_filter_between
    filter = ConditionGroup.new

    condition = Condition.new
    condition.field = "customer_id"
    condition.condition_operator = "Between"
    condition.values = [1, 5]

    filter.conditions = [condition]

    @transform.filter = filter

    result = @api.transform_sql_post(@transform)

    correct = "select customer.customer_id, customer.first_name, customer.last_name, customer.create_date from customer where customer.customer_id between 1 and 5"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_condition_group
    filter = ConditionGroup.new

    conditionGroup = ConditionGroup.new
    conditionGroup.junction_type = "And"

    condition1 = Condition.new
    condition1.field = "customer_id"
    condition1.condition_operator = "IsNull"

    condition2 = Condition.new
    condition2.field = "customer_id"
    condition2.condition_operator = "IsNotNull"

    conditionGroup.conditions = [condition1, condition2]

    filter.condition_groups = [conditionGroup]

    @transform.filter = filter

    result = @api.transform_sql_post(@transform)

    correct = "select customer.customer_id, customer.first_name, customer.last_name, customer.create_date from customer where (customer.customer_id is null) and (customer.customer_id is not null)"
    assert_equal(result.sql.downcase, correct.downcase)
  end

  def test_invalid_column
    min = Totals.new
    min.field = "id1"
    min.aggregate = "avg"

    @transform.totals = [min]

    result = @api.transform_sql_post(@transform)

    correct = "QueryTransformer does't contain id1"
    assert_equal(result.error.downcase, correct.downcase)
  end

  def test_get_query_columns
    query = SqlQuery.new
    query.guid = @guid
    query.text = @sql

    fields = @api.get_query_columns_post(query)  

    assert_equal(fields.length, 4)
    assert_equal("customer_id", fields[0].name.downcase)
    assert_equal("smallint", fields[0].data_type.downcase)
    assert_equal("create_date", fields[3].name.downcase)
    assert_equal("datetime", fields[3].data_type.downcase)
  end

end
