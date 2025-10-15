#!/usr/bin/env bash
set -euo pipefail

# Determine repository root dynamically so the script can be run from anywhere.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

mkdir -p "${ROOT}/notebooks" "${ROOT}/data" "${ROOT}/assets" "${ROOT}/scripts"

log() {
  printf '[reorganize] %s\n' "$1"
}

move_if_exists() {
  local source="$1"
  local destination="$2"

  if [[ -e "${ROOT}/${source}" ]]; then
    mkdir -p "$(dirname "${ROOT}/${destination}")"
    mv -n "${ROOT}/${source}" "${ROOT}/${destination}"
    log "moved ${source} -> ${destination}"
  fi
}

log "Moving and renaming notebooks..."
declare -a NOTEBOOK_MOVES=(
  "HW4_P_402203389_Fateme_Raeijian.ipynb::notebooks/soft_margin_svm.ipynb"
  "HW5(Q1)_P_402203389_Fateme_Raeijian_ipynb.ipynb::notebooks/adaboost_synthetic_classification.ipynb"
  "HW5(Q2)_P_402203389_Fateme_Raeijian_ipynb.ipynb::notebooks/mushroom_decision_tree_analysis.ipynb"
  "HW6-p-Fateme Raeijian-402203389.ipynb::notebooks/spotify_clustering_pipeline.ipynb"
  "MLE_MAP.ipynb::notebooks/MLE_MAP.ipynb"
  "Q3_MLE_MAP/MLE_MAP.ipynb::notebooks/Maximum_Likelihood.ipynb"
  "Logistic_Regression.ipynb::notebooks/Logistic_Regression.ipynb"
  "LR - Questions.ipynb::notebooks/Linear_Regression_Questions.ipynb"
  "Neural_Network.ipynb::notebooks/Neural_Network.ipynb"
  "Q1_Perceptron.ipynb::notebooks/Perceptron.ipynb"
  "Q1_Perceptron/Q1_Perceptron.ipynb::notebooks/Perceptron_Detailed.ipynb"
  "Q2_LinearRegression/LR - Questions.ipynb::notebooks/Linear_Regression_Q2.ipynb"
  "Q1_Perceptron/.ipynb_checkpoints/Q1_Perceptron-checkpoint.ipynb::notebooks/perceptron_checkpoint.ipynb"
)

for pair in "${NOTEBOOK_MOVES[@]}"; do
  IFS="::" read -r source destination <<<"${pair}"
  move_if_exists "${source}" "${destination}"
done

# Remove empty original folders if they exist.
log "Removing empty legacy directories..."
for legacy_dir in "Q1_Perceptron" "Q2_LinearRegression" "Q3_MLE_MAP"; do
  rmdir --ignore-fail-on-non-empty "${ROOT}/${legacy_dir}" 2>/dev/null || true
done

log "Moving datasets..."
declare -a DATA_MOVES=(
  "Dataset.csv::data/dataset.csv"
  "data.txt::data/general_data.txt"
  "Q2_LinearRegression/data.txt::data/linear_regression_data.txt"
  "Q1_Perceptron/Dataset.csv::data/perceptron_dataset.csv"
)

for pair in "${DATA_MOVES[@]}"; do
  IFS="::" read -r source destination <<<"${pair}"
  move_if_exists "${source}" "${destination}"
done

log "Moving assets (images)..."
declare -a ASSET_MOVES=(
  "example1.jpg::assets/example1.jpg"
  "example2.jpg::assets/example2.jpg"
  "Q2_LinearRegression/example1.jpg::assets/linear_example1.jpg"
  "Q2_LinearRegression/example2.jpg::assets/linear_example2.jpg"
  "Q2_LinearRegression/LinearRegression.png::assets/linear_regression.png"
  "LinearRegression.png::assets/linear_regression_overview.png"
)

for pair in "${ASSET_MOVES[@]}"; do
  IFS="::" read -r source destination <<<"${pair}"
  move_if_exists "${source}" "${destination}"
done

log "Cleaning up ipynb_checkpoints..."
find "${ROOT}" -type d -name '.ipynb_checkpoints' -exec rm -rf {} + 2>/dev/null || true

log "Reorganization complete."
