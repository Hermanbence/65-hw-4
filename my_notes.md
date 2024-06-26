# Create multiple namespace with kubectl
```
namespace in hw4-dev hw4-test hw4-prod; do \
  kubectl delete namespace $namespace \
done
```
