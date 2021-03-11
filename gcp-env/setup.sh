#!/bin/bash

gcloud beta container clusters create ksok --addons=Istio --istio-config=auth=MTLS_STRICT --cluster-version=latest --machine-type=n1-standard-2 --num-nodes=3 --region us-central1-a --quiet

kubectl apply --filename https://github.com/knative/serving/releases/download/v0.21.0/serving-crds.yaml

kubectl apply --filename https://github.com/knative/serving/releases/download/v0.21.0/serving-core.yaml

gcloud pubsub topics create feedback-created

