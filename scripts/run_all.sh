#!/bin/bash
# Run all main experiments from start to finish,
# _after_ all necessary features have been extracted

./scripts/train_asv_cm_repetitions.sh
./scripts/eval_asv_cm_repetitions.sh > output/initial_eval.txt
./scripts/run_joint_training.sh
./scripts/eval_joint_rl.sh > output/joint_training_eval.txt
./scripts/concatenate_gender_scores.sh
./scripts/render_metrics_average_repetitions.sh
./scripts/render_metrics_average_repetitions_paper.sh