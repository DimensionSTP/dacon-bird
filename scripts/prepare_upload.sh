#!/bin/bash

path="src/postprocessing"
is_tuned="untuned"
strategy="ddp"
upload_user="microsoft"
model_type="swinv2-large-patch4-window12to16-192to256-22kto1k-ft"
precision=32
batch_size=24
epoch=10

python $path/prepare_upload.py \
    is_tuned=$is_tuned \
    strategy=$strategy \
    upload_user=$upload_user \
    model_type=$model_type \
    precision=$precision \
    batch_size=$batch_size \
    epoch=$epoch
