kubectl create ns hw4-dev

kubectl kustomize .

kubectl apply -k .
kubectl apply -k .\overlays\test\
kubectl delete -k .