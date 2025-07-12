{% macro money() -%}
::decimal(16,4)
{%- endmacro %}

{% macro dol_eur(colm, deci) -%}
    round( 0.93 * {{ colm }}, {{ deci }})
{%- endmacro %}

{% macro dol_inr(col,deci) -%}
round(0.85 * {{ col}} ,{{deci}})
{%- endmacro%}