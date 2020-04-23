# Install Argo

```bash
# install argo-cd
# https://argoproj.github.io/argo-cd/getting_started/

# https://github.com/hbstarjason/Continuous-Deploy/blob/master/Argocd-install.md

$ kubectl create namespace argocd
$ kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
$ kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'


# install argo-rollouts
# https://argoproj.github.io/argo-rollouts/getting-started/

# https://github.com/hbstarjason/Continuous-Deploy/blob/master/Argorollout-install.md

$ kubectl create namespace argo-rollouts
$ kubectl apply -n argo-rollouts -f https://raw.githubusercontent.com/argoproj/argo-rollouts/stable/manifests/install.yaml
```



# K8s Deployment Example App

This example app provides a simple Python Flask API which returns a json object.
Its used to visualise a simple change/update in an application.


## build and run
Without using docker-compose:
```bash
docker build -t k8s-deployment-example-app .

docker run -p 5000:5000 k8s-deployment-example-app
```

## call
```bash
curl -s localhost:5000 | grep label

while true; do curl -s localhost:5000 | grep label; sleep 1; done
```
