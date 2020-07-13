# k8s-prow-mirror

Prow images mirror.

gcr.io | docker.io
---|---
gcr.io/k8s-prow/deck:v20200710-f1d386e7c4 | zhangsean/k8s-prow-deck:v20200710-f1d386e7c4
gcr.io/k8s-prow/hook:v20200710-f1d386e7c4 | zhangsean/k8s-prow-hook:v20200710-f1d386e7c4
gcr.io/k8s-prow/horologium:v20200710-f1d386e7c4 | zhangsean/k8s-prow-horologium:v20200710-f1d386e7c4
gcr.io/k8s-prow/plank:v20200710-f1d386e7c4 | zhangsean/k8s-prow-plank:v20200710-f1d386e7c4
gcr.io/k8s-prow/sinker:v20200710-f1d386e7c4 | zhangsean/k8s-prow-sinker:v20200710-f1d386e7c4
gcr.io/k8s-prow/status-reconciler:v20200710-f1d386e7c4 | zhangsean/k8s-prow-status-reconciler:v20200710-f1d386e7c4
gcr.io/k8s-prow/tide:v20200710-f1d386e7c4 | zhangsean/k8s-prow-tide:v20200710-f1d386e7c4

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/raw/master/config/prow/cluster/starter.yaml | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter.yaml
```
