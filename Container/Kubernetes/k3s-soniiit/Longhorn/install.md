curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.7.2/scripts/environment_check.sh | bash
sudo modprobe iscsi_tcp
sudo systemctl start iscsid
sudo apt install nfs-common -y
sudo systemctl disable multipathd multipathd.socket
sudo systemctl stop multipathd multipathd.socket

helm repo add longhorn https://charts.longhorn.io
helm repo update
helm install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace --version 1.7.2 --values=longhorn-values.yaml
