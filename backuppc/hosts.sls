# backuppc.hosts
#
# Manages backuppc hosts file

{% from 'backuppc/map.jinja' import backuppc, backuppc_hosts_block with context %}

# hosts file
backuppc_hosts_file:
  file.managed:
    - name: {{ backuppc.lookup.hosts_file }}
    - source: salt://backuppc/files/hosts.conf
    - template: jinja
    - user: {{ backuppc.lookup.user }}
    - group: {{ backuppc.lookup.group }}
    - mode: 664
    - context:
        hosts: {{ backuppc.server.hosts|json() }}
        host_defaults: {{ backuppc.host_defaults|json() }}

# host detail configuration 
{% for host,data in salt['mine.get']('*', 'backuppc_backup').items() -%}
backuppc_host_file_{{ host }}:
  file.managed:
    - name: {{ backuppc.lookup.config_dir }}/{{ host }}
    - source: salt://backuppc/files/host.conf
    - template: jinja
    - user: {{ backuppc.lookup.user }}
    - group: {{ backuppc.lookup.group }}
    - mode: 664
    - context:
        host: {{ host|json() }}
        data: {{ data|json() }}
{% endfor %}
