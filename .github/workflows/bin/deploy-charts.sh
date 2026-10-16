#!/usr/bin/bash

echo "** Update dependency for application-tmpl"
helm dependency update charts/application-tmpl || exit 1

echo "** Build dependency for application-tmpl"
helm dependency build charts/application-tmpl || exit 1

echo "** Update dependency for lewindigo"
helm dependency update charts/lewindigo || exit 1

echo "** Build dependency for lewindigo"
helm dependency build charts/lewindigo || exit 1

echo "** Dry-run install lewindigo"
helm install mydemo charts/lewindigo/ --namespace=lewindigo-dev --debug --dry-run=client || exit 1
