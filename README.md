# k8s-prow-mirror

Prow images mirror.

gcr.io | docker hub
---|---
gcr.io/k8s-prow/deck:v20200916-29e367bb39 | [zhangsean/k8s-prow-deck](https://hub.docker.com/r/zhangsean/k8s-prow-deck):v20200916-29e367bb39
gcr.io/k8s-prow/hook:v20200916-29e367bb39 | [zhangsean/k8s-prow-hook](https://hub.docker.com/r/zhangsean/k8s-prow-hook):v20200916-29e367bb39
gcr.io/k8s-prow/horologium:v20200916-29e367bb39 | [zhangsean/k8s-prow-horologium](https://hub.docker.com/r/zhangsean/k8s-prow-horologium):v20200916-29e367bb39
gcr.io/k8s-prow/plank:v20200916-29e367bb39 | [zhangsean/k8s-prow-plank](https://hub.docker.com/r/zhangsean/k8s-prow-plank):v20200916-29e367bb39
gcr.io/k8s-prow/sinker:v20200916-29e367bb39 | [zhangsean/k8s-prow-sinker](https://hub.docker.com/r/zhangsean/k8s-prow-sinker):v20200916-29e367bb39
gcr.io/k8s-prow/status-reconciler:v20200916-29e367bb39 | [zhangsean/k8s-prow-status-reconciler](https://hub.docker.com/r/zhangsean/k8s-prow-status-reconciler):v20200916-29e367bb39
gcr.io/k8s-prow/tide:v20200916-29e367bb39 | [zhangsean/k8s-prow-tide](https://hub.docker.com/r/zhangsean/k8s-prow-tide):v20200916-29e367bb39

## Usage

```bash
# Deploy latest prow
curl -sSL https://github.com/kubernetes/test-infra/raw/master/config/prow/cluster/starter-s3.yaml | sed 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' | kubectl apply -f -
# Or change local starter.yaml
sed -i '' 's|gcr.io/k8s-prow/|zhangsean/k8s-prow-|g' starter-s3.yaml
```
