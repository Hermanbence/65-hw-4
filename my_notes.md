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