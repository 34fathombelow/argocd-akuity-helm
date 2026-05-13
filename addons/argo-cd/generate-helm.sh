#!bash

helm dependency update ./chart

 helm template akuity-argocd ./chart \
 --values ./chart/values.yaml \
 --include-crds \
 --namespace argocd \
 > ./rendered-manifest/upstream.yaml