#!/bin/bash

SCENE=Panama
EXPERIMENT=360_v2/"$SCENE"_zipner_forward_face
DATA_ROOT=./data/360_v2
DATA_DIR="$DATA_ROOT"/"$SCENE"

python eval.py \
  --gin_configs=configs/360.gin \
  --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
  --gin_bindings="Config.exp_name = '${EXPERIMENT}'" \
  --gin_bindings="Config.factor = 0" \
  --gin_bindings="Config.forward_facing = True" \

