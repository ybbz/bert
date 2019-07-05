#!/bin/bash
# 训练入口脚本

export DATA_DIR=./data/
export OUTPUT_DIR=./output/
export BERT_MODELS_DIR=./models/chinese

python run_classifier.py \
  --task_name=news \
  --do_train=false \
  --do_eval=true \
  --data_dir=${DATA_DIR} \
  --vocab_file=${BERT_MODELS_DIR}/vocab.txt \
  --bert_config_file=${BERT_MODELS_DIR}/bert_config.json \
  --init_checkpoint=${BERT_MODELS_DIR}/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=${OUTPUT_DIR}