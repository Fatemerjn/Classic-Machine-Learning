#!/usr/bin/env bash
set -euo pipefail

ROOT="/Users/fateme/Documents/uni/untitled folder/Classic-Machine-Learning"
mkdir -p "$ROOT/notebooks" "$ROOT/data" "$ROOT/assets" "$ROOT/scripts"

echo "Moving and renaming notebooks..."
mv -n "$ROOT/HW4_P_402203389_Fateme_Raeijian.ipynb" "$ROOT/notebooks/Assignment_4.ipynb" || true
mv -n "$ROOT/HW5(Q1)_P_402203389_Fateme_Raeijian_ipynb.ipynb" "$ROOT/notebooks/Assignment_5_Q1.ipynb" || true
mv -n "$ROOT/HW5(Q2)_P_402203389_Fateme_Raeijian_ipynb.ipynb" "$ROOT/notebooks/Assignment_5_Q2.ipynb" || true
mv -n "$ROOT/MLE_MAP.ipynb" "$ROOT/notebooks/MLE_MAP.ipynb" || true
mv -n "$ROOT/Q3_MLE_MAP/MLE_MAP.ipynb" "$ROOT/notebooks/Maximum_Likelihood.ipynb" || true
mv -n "$ROOT/Logistic_Regression.ipynb" "$ROOT/notebooks/Logistic_Regression.ipynb" || true
mv -n "$ROOT/LR - Questions.ipynb" "$ROOT/notebooks/Linear_Regression_Questions.ipynb" || true
mv -n "$ROOT/Neural_Network.ipynb" "$ROOT/notebooks/Neural_Network.ipynb" || true
mv -n "$ROOT/Q1_Perceptron.ipynb" "$ROOT/notebooks/Perceptron.ipynb" || true
mv -n "$ROOT/Q1_Perceptron/Q1_Perceptron.ipynb" "$ROOT/notebooks/Perceptron_Detailed.ipynb" || true
mv -n "$ROOT/Q2_LinearRegression/LR - Questions.ipynb" "$ROOT/notebooks/Linear_Regression_Q2.ipynb" || true

echo "Final tidy: moving remaining notebooks and renaming HW6..."
mv -n "$ROOT/HW6-p-Fateme Raeijian-402203389.ipynb" "$ROOT/notebooks/Assignment_6.ipynb" || true
mv -n "$ROOT/Q3_MLE_MAP/MLE_MAP.ipynb" "$ROOT/notebooks/Maximum_Likelihood_Detailed.ipynb" || true
mv -n "$ROOT/Q1_Perceptron/.ipynb_checkpoints/Q1_Perceptron-checkpoint.ipynb" "$ROOT/notebooks/Perceptron_check.ipynb" || true

# Remove empty original folders if empty
rmdir --ignore-fail-on-non-empty "$ROOT/Q1_Perceptron" || true
rmdir --ignore-fail-on-non-empty "$ROOT/Q2_LinearRegression" || true
rmdir --ignore-fail-on-non-empty "$ROOT/Q3_MLE_MAP" || true

echo "Moving datasets..."
mv -n "$ROOT/Dataset.csv" "$ROOT/data/dataset.csv" || true
mv -n "$ROOT/data.txt" "$ROOT/data/general_data.txt" || true
mv -n "$ROOT/Q2_LinearRegression/data.txt" "$ROOT/data/linear_regression_data.txt" || true
mv -n "$ROOT/Q1_Perceptron/Dataset.csv" "$ROOT/data/perceptron_dataset.csv" || true

echo "Moving assets (images)..."
mv -n "$ROOT/example1.jpg" "$ROOT/assets/example1.jpg" || true
mv -n "$ROOT/example2.jpg" "$ROOT/assets/example2.jpg" || true
mv -n "$ROOT/Q2_LinearRegression/example1.jpg" "$ROOT/assets/linear_example1.jpg" || true
mv -n "$ROOT/Q2_LinearRegression/example2.jpg" "$ROOT/assets/linear_example2.jpg" || true
mv -n "$ROOT/Q2_LinearRegression/LinearRegression.png" "$ROOT/assets/linear_regression.png" || true
mv -n "$ROOT/LinearRegression.png" "$ROOT/assets/linear_regression_overview.png" || true

echo "Cleaning up ipynb_checkpoints..."
find "$ROOT" -type d -name '.ipynb_checkpoints' -exec rm -rf {} + || true

echo "Reorganization complete."
