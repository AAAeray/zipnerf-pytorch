#!/bin/bash

SCENE=Panama
EXPERIMENT=360_v2/"$SCENE"_zipner_forward_face
DATA_ROOT=./data/360_v2
DATA_DIR="$DATA_ROOT"/"$SCENE"
CHECKPOINT_DIR=./"$EXPERIMENT"/"$SCENE"

CUDA_VISIBLE_DEVICES=0 python train.py --gin_configs=configs/360.gin \
  --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
  --gin_bindings="Config.exp_name = '${EXPERIMENT}'" \
  --gin_bindings="Config.factor = 0" \
  --gin_bindings="Config.batch_size = 16384" \
  --gin_bindings="Config.max_steps = 500000" \
  --gin_bindings="Config.forward_facing = True" \
  --gin_bindings="Config.train_render_every = 10000" \
  --gin_bindings="Config.lr_final = 0.0001" \
