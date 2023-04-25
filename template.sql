select
    {%- for column in columns %}
    {{ column -}}
    {%- if not loop.last %}, {% endif -%}
    {% endfor %}
from table1
where 1=1
{%- for condition in conditions %}
    and {{ condition -}}
{% endfor %}
group by
{%- for column in columns %} {{ column -}} {% if not loop.last %}, {%- endif %}
{%- endfor -%}
;
