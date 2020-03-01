# k8s-prow-mirror

Prow images mirror.

gcr.io | docker.io
---|---
gcr.io/k8s-prow/deck: | zhangsean/k8s-prow-deck:
gcr.io/k8s-prow/hook: | zhangsean/k8s-prow-hook:
gcr.io/k8s-prow/horologium: | zhangsean/k8s-prow-horologium:
gcr.io/k8s-prow/plank: | zhangsean/k8s-prow-plank:
gcr.io/k8s-prow/sinker: | zhangsean/k8s-prow-sinker:
gcr.io/k8s-prow/status-reconciler: | zhangsean/k8s-prow-status-reconciler:
gcr.io/k8s-prow/tide: | zhangsean/k8s-prow-tide:

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/blob/master/prow/cluster/starter.yaml?raw= | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter.yaml
```
