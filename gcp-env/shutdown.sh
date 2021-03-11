#!/bin/bash

gcloud pubsub topics delete feedback-created

gcloud beta container clusters delete ksok --region us-central1-a --quiet


