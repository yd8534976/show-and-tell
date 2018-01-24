MSCOCO_DIR="/app/mscoco"

INCEPTION_CHECKPOINT="/app/show-and-tell/data/inception_v3.ckpt"

MODEL_DIR="/app/show-and-tell/model"

bazel build -c opt //im2txt/...

bazel-bin/im2txt/train \
  --input_file_pattern="${MSCOCO_DIR}/train-?????-of-00256" \
  --inception_checkpoint_file="${INCEPTION_CHECKPOINT}" \
  --train_dir="${MODEL_DIR}/train" \
  --train_inception=false \
  --number_of_steps=1000000

