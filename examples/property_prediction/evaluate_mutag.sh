# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.
#!/usr/bin/env bash


python graphormer/evaluate/evaluate.py \
--user-dir ../../graphormer \
--num-workers 16 \
--ddp-backend=legacy_ddp \
--dataset-name tu:name=MUTAG \
--dataset-source dgl \
--task graph_prediction \
--arch graphormer_slim \
--num-classes 1 \
--save-dir ./examples/property_prediction/ckpts/ \
--split test \
--metric acc
