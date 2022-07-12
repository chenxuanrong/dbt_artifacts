{% macro upload_results(results) -%}
    {% if execute %}
        {% if results != [] %}
            {% do dbt_artifacts.upload_model_executions(results) %}
            {% do dbt_artifacts.upload_test_executions(results) %}
        {% endif %}
        {% do dbt_artifacts.upload_models(graph) %}
        {% do dbt_artifacts.upload_tests(graph) %}
    {% endif %}
{%- endmacro %}

