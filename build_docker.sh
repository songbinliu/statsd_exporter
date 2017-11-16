#!/bin/bash

tag=beekman9527/statsd_exporter

# docker build -t $tag .
make product && docker build -t $tag .
