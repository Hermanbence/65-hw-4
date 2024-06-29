# Create multiple namespace with kubectl
```
for namespace in hw4-dev hw4-test hw4-prod; do
  kubectl delete namespace $namespace
done
```

# Kustomize
- If use kustomization.yaml in an overlay with a new resouce which is not defined in the base you need to add the label because it wont add the common label from the base.
- Example if you want in the prod env that the ingress have the label "training: block4" it'S nessesary to add in the overlays/prod/ingress.yaml because it's not in the base/kustomization.yaml
- With patches it's not nessesary because those are just additonal for the base

# Helm
## create manifest from the render
```
helm template hw4-prod . -f templates/prod/values.yaml > generated-manifests.yaml
```
## Usefull commands
```
helm list 
helm get all REALESASE_NAME
helm get all hw4-prod
helm upgrade REALESASE_NAME
helm history REALESASE_NAME
helm roleback REALESASE_NAME
helm roleback REVISION_NUMBER REALESASE_NAME

helm repo add bitnami URL
helm repo update
helm show value bitnami/postgresql
```

kubectl get endpoints frontapp -n hw4-prod
kubectl describe ingress frontapp -n hw4-prod
kubectl port-forward svc/frontapp 8080:8080 -n hw4-prod