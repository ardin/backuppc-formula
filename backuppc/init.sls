# vim: ft=sls

{% set backuppc = salt['pillar.get']('backuppc', False) %}
{% if backuppc is defined and backuppc %}
include:
{% for state,values in backuppc.items() -%}
  - .{{ state }}
{%   endfor %}
{% endif %}

