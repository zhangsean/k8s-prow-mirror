# k8s-prow-mirror

Prow images mirror.

gcr.io | docker.io
---|---
gcr.io/k8s-prow/deck:v20200402-e8494846e | zhangsean/k8s-prow-deck:v20200402-e8494846e
gcr.io/k8s-prow/hook:v20200402-e8494846e | zhangsean/k8s-prow-hook:v20200402-e8494846e
gcr.io/k8s-prow/horologium:v20200402-e8494846e | zhangsean/k8s-prow-horologium:v20200402-e8494846e
gcr.io/k8s-prow/plank:v20200402-e8494846e | zhangsean/k8s-prow-plank:v20200402-e8494846e
gcr.io/k8s-prow/sinker:v20200402-e8494846e | zhangsean/k8s-prow-sinker:v20200402-e8494846e
gcr.io/k8s-prow/status-reconciler:v20200402-e8494846e | zhangsean/k8s-prow-status-reconciler:v20200402-e8494846e
gcr.io/k8s-prow/tide:v20200402-e8494846e | zhangsean/k8s-prow-tide:v20200402-e8494846e

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/blob/master/prow/cluster/starter.yaml?raw= | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter.yaml
```
