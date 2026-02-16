{% macro remove_currency(column_name) %}
  cast(replace({{ column_name }}, 'R', '') as numeric)
{% endmacro %}
