# Commands for kustomize

# Create the namespaces
kubectl create namespace hw4-dev
kubectl create ns hw4-prod
kubectl create ns hw4-test

# Rendering
kubectl kustomize .

# Apply kustomization yaml in the current dir.
ć

# Apply kustomization yaml in the overlay/test dir from parent dir.
kubectl apply -k .\overlays\test\

# Delete kustomization yaml in the current dir.
kubectl delete -k .
#########################################################################
# Commands for helm

# Create helm chart.
helm create helm

# Render a Helm chart into Kubernetes manifests 
helm template .

# From helm Chart.yaml dir, -f path for the required values.yaml
helm template myrelease . -f prod/values.yaml
helm template myrelease . -f test/values.yaml
helm template myrelease . -f dev/values.yaml

# helm install RELEASE_NAME CHART_PATH [flags] [options]
helm install hw4-prod . -f prod/values.yaml -n hw4-prod
helm install hw4-dev . -f dev/values.yaml -n hw4-dev
helm install hw4-test . -f test/values.yaml -n hw4-test

# helm upgrade
# helm upgrade [RELEASE] [CHART] [flags]
helm upgrade hw4-prod . -f prod/values.yaml -n hw4-prod

# helm unistall
helm uninstall hw4-prod 
helm uninstall hw4-dev 
helm uninstall hw4-test 
