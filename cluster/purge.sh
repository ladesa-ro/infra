#!/bin/bash

set -xe

cd /tmp;

kind delete cluster;

rm -rf /var/lib/ladesa-ro/infra/storage/;
rm -rf /tmp/ladesa-ro/infra/repo;