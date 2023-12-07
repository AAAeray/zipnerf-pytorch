#!/bin/bash

SCENE=Panama
EXPERIMENT=360_v2/"$SCENE"_zipner_forward_face
DATA_ROOT=./data/360_v2
DATA_DIR="$DATA_ROOT"/"$SCENE"

CUDA_VISIBLE_DEVICES=0 python render.py \
  --gin_configs=configs/360.gin \
  --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
  --gin_bindings="Config.exp_name = '${EXPERIMENT}'" \
  --gin_bindings="Config.render_video_fps = 30" \
  --gin_bindings="Config.factor = 0" \
  --gin_bindings="Config.render_path = True" \
  --gin_bindings="Config.forward_facing = True" \
  --gin_bindings="Config.render_spline_keyframes = '/home/zengxr/project/zipnerf-pytorch/exp/360_v2/Panama_zipner_forward_face/renderkeyframs.txt' " \
  --gin_bindings="Config.render_path_frames = 30" \

#  --gin_bindings="Config.render_spline_keyframes = '${KEY_FRAMES_DIR}'"
