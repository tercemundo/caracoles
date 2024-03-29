helm version

helm repo add portainer https://portainer.github.io/k8s/
helm repo update
helm search repo portainer

# Create a namespace for portainer
kubectl create namespace portainer

# Let us install portainer chart without persisting any data
helm install -n portainer portainer portainer/portainer --set persistence.enabled=false

# Wait till the pod comes up without any issue & also, check on the NodePort service

k get po -n portainer
k get svc -n portainer

# Once the pod is running without any issues, let us check out the portainer dashboard
minikube service portainer -n portainer

# Open a browser & hit the NodePort URL associated with https/9443
#firefox https://192.168.49.204:9443
#
#
admin/devopscourse23
