MSCOCO_DIR="/app/mscoco"

bazel build //im2txt:download_and_preprocess_mscoco

bazel-bin/im2txt/download_and_preprocess_mscoco "${MSCOCO_DIR}"

