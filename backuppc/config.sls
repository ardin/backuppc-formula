# backuppc.hosts
#
# Manages backuppc hosts file

{% from 'backuppc/map.jinja' import backuppc with context %}

# config file
backuppc_config_file:
  file.managed:
    - name: {{ backuppc.lookup.config_file }}
    - source: salt://backuppc/files/config.pl
    - template: jinja
    - user: {{ backuppc.lookup.user }}
    - group: {{ backuppc.lookup.group }}
    - mode: 664
