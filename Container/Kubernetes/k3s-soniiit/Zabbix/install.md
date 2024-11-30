helm upgrade --install zabbix zabbix-community/zabbix --dependency-update --create-namespace --version 6.1.1 --values=zabbix-values.yaml -n zabbix
