# k8s-prow-mirror

Prow images mirror.

gcr.io | docker.io
---|---
gcr.io/k8s-prow/deck:v20191205-ed6d94a45 | zhangsean/k8s-prow-deck:v20191205-ed6d94a45
gcr.io/k8s-prow/hook:v20191205-ed6d94a45 | zhangsean/k8s-prow-hook:v20191205-ed6d94a45
gcr.io/k8s-prow/horologium:v20191205-ed6d94a45 | zhangsean/k8s-prow-horologium:v20191205-ed6d94a45
gcr.io/k8s-prow/plank:v20191205-ed6d94a45 | zhangsean/k8s-prow-plank:v20191205-ed6d94a45
gcr.io/k8s-prow/sinker:v20191205-ed6d94a45 | zhangsean/k8s-prow-sinker:v20191205-ed6d94a45
gcr.io/k8s-prow/status-reconciler:v20191205-ed6d94a45 | zhangsean/k8s-prow-status-reconciler:v20191205-ed6d94a45
gcr.io/k8s-prow/tide:v20191205-ed6d94a45 | zhangsean/k8s-prow-tide:v20191205-ed6d94a45

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/blob/master/prow/cluster/starter.yaml?raw= | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter.yaml
```
