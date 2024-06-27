# Commands for kustomize

# Create the namespaces
kubectl create namespace hw4-dev
kubectl create ns hw4-prod
kubectl create ns hw4-test

# Rendering
kubectl kustomize .

# Apply kustomization yaml in the current dir.
kubectl apply -k .

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
helm template myrelease . -f templates/prod/values.yaml
helm template myrelease . -f templates/test/values.yaml
helm template myrelease . -f templates/dev/values.yaml

# create manifest from the render
helm template hw4-prod . -f templates/prod/values.yaml > generated-manifests.yaml

# helm install RELEASE_NAME CHART_PATH [flags] [options]
helm install hw4-dev .\hw4\ -n hw4-helm
helm install hw4-prod . -f templates/prod/values.yaml