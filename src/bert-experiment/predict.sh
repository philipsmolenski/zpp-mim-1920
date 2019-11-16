#!/usr/bin/env bash

python bert/run_classifier.py --data_dir=./bert/fine-tune_data --bert_config_file=./bert/model/bert_config.json --task_name=cola --vocab_file=./bert/model/vocab.txt --output_dir=./bert/bert_output --init_checkpoint=./bert/model/model-ckpt- --do_lower_case=False --max_seq_length=512 --do_predict=True --use_tpu=True --tpu_name=grpc://10.125.162.34:8470 --tpu_zone=europe-west4-a --num_tpu_cores 8 --save_checkpoints_steps 10000
