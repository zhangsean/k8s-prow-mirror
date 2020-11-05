# k8s-prow-mirror

Prow images mirror.

gcr.io | docker hub
---|---
gcr.io/k8s-prow/deck:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-deck](https://hub.docker.com/r/zhangsean/k8s-prow-deck):v20201104-7f4d0d52ed
gcr.io/k8s-prow/hook:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-hook](https://hub.docker.com/r/zhangsean/k8s-prow-hook):v20201104-7f4d0d52ed
gcr.io/k8s-prow/horologium:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-horologium](https://hub.docker.com/r/zhangsean/k8s-prow-horologium):v20201104-7f4d0d52ed
gcr.io/k8s-prow/plank:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-plank](https://hub.docker.com/r/zhangsean/k8s-prow-plank):v20201104-7f4d0d52ed
gcr.io/k8s-prow/sinker:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-sinker](https://hub.docker.com/r/zhangsean/k8s-prow-sinker):v20201104-7f4d0d52ed
gcr.io/k8s-prow/status-reconciler:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-status-reconciler](https://hub.docker.com/r/zhangsean/k8s-prow-status-reconciler):v20201104-7f4d0d52ed
gcr.io/k8s-prow/tide:v20201104-7f4d0d52ed | [zhangsean/k8s-prow-tide](https://hub.docker.com/r/zhangsean/k8s-prow-tide):v20201104-7f4d0d52ed

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/raw/master/config/prow/cluster/starter-s3.yaml | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter-s3.yaml
```
