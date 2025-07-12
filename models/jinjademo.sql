{% set name= "Jayashri" %}

{{name}}

{% set name= 'Jayshri' -%}
{%set location= 'Bangalore' -%}

I am {{ name }} from {{ location }}
{%set sub= 'dbt'%}
{%set tool=['dbt','snowflake','sql']%}
We are working on {{ tool[0] }} and {{ tool[1] }}