# k8s-prow-mirror

Prow images mirror.

gcr.io | docker.io
---|---
gcr.io/k8s-prow/hook:v20190724-1fcd9e27e | zhangsean/k8s-prow-hook:v20190724-1fcd9e27e
gcr.io/k8s-prow/plank:v20190724-1fcd9e27e | zhangsean/k8s-prow-plank:v20190724-1fcd9e27e
gcr.io/k8s-prow/sinker:v20190724-1fcd9e27e | zhangsean/k8s-prow-sinker:v20190724-1fcd9e27e
gcr.io/k8s-prow/deck:v20190724-1fcd9e27e | zhangsean/k8s-prow-deck:v20190724-1fcd9e27e
gcr.io/k8s-prow/horologium:v20190724-1fcd9e27e | zhangsean/k8s-prow-horologium:v20190724-1fcd9e27e
gcr.io/k8s-prow/tide:v20190724-1fcd9e27e | zhangsean/k8s-prow-tide:v20190724-1fcd9e27e
gcr.io/k8s-prow/status-reconciler:v20190724-1fcd9e27e | zhangsean/k8s-prow-status-reconciler:v20190724-1fcd9e27e

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/blob/master/prow/cluster/starter.yaml?raw= | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter.yaml
```
