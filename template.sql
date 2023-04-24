select column1
    , column2
    , column3
from table1
where 1=1
{%- for condition in variable %}
   and {{ condition -}}
{% endfor %}
group by
{%- for condition in variable %} {{ condition -}} {% if not loop.last %}, {%- endif %}
{%- endfor -%}
;
