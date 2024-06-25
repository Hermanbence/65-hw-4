namespace in app1 app2 app3; do
  kubectl delete namespace $namespace
done