#!/bin/bash

ROOT=/project/OML/skoneru/mtmarathon22/fairseq/

fairseq-hydra-train \
  task.data=$ROOT/Libri_Manifest/ \
  model.w2v_path=$ROOT/Libri_Manifest/wav2vec_small_960h.pt \
  --config-dir $ROOT/examples/wav2vec/config/finetuning \
  --config-name base_960h
  #task.target_dictionary=$ROOT/target_dictionary \
