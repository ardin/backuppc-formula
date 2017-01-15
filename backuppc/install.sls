# vim: ft=sls

{% from 'backuppc/map.jinja' import backuppc with context %}

{% if salt['grains.get']('os_family') == 'RedHat' %}

backuppc_install:
  pkg.installed:
    - name: {{ backuppc.lookup.package }}
  service.running:
    - name: {{ backuppc.lookup.service }}
    - enable: {{ backuppc.service.enable }}
    - gpgcheck: False

{% endif %}

