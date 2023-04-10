select
from
where 1=1
{%- for condition in variable %}
   and {{ condition -}}
{% endfor %}
;
