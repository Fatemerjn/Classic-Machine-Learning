# Classic Machine Learning

Curated collection of classical machine learning case studies, datasets, and helper tooling. All course-oriented notebooks have been renamed and grouped by topic to make the repository feel like a reusable project instead of a homework dump.

**Repository layout**
- `notebooks/` — Jupyter notebooks organised by modelling theme.
- `data/` — CSV/TXT datasets referenced by notebooks.
- `assets/` — figures and supporting imagery.
- `scripts/` — maintenance utilities such as `reorganize.sh`.

**Notebooks overview**
- `notebooks/soft_margin_svm.ipynb` — soft-margin SVM exploration and visualisation.
- `notebooks/adaboost_synthetic_classification.ipynb` — AdaBoost implemented from scratch on a synthetic dataset.
- `notebooks/mushroom_decision_tree_analysis.ipynb` — decision tree baseline with missing-value handling on the Kaggle mushroom dataset.
- `notebooks/spotify_clustering_pipeline.ipynb` — dimensionality reduction and song clustering for Spotify features.
- `notebooks/Linear_Regression.ipynb`, `notebooks/Linear_Regression_Q2.ipynb`, `notebooks/Linear_Regression_Questions.ipynb` — linear regression notes, exercises, and question walkthroughs.
- `notebooks/Logistic_Regression.ipynb` — logistic regression modelling and evaluation.
- `notebooks/MLE_MAP.ipynb`, `notebooks/Maximum_Likelihood.ipynb` — maximum likelihood and MAP estimation derivations.
- `notebooks/Neural_Network.ipynb`, `notebooks/Perceptron.ipynb`, `notebooks/Perceptron_Detailed.ipynb` — perceptron and neural network experiments.

**Quick start**
- Create and activate a Python environment (Python 3.9+ recommended):
  ```
  python -m venv .venv
  source .venv/bin/activate
  ```
- Install the common scientific stack:
  ```
  pip install numpy pandas scikit-learn matplotlib seaborn jupyter
  ```
- Launch Jupyter Lab or Notebook and open the files under `notebooks/`:
  ```
  jupyter lab
  ```

**Maintaining the structure**
- Run `scripts/reorganize.sh` to re-apply the tidy folder layout when adding raw homework exports.
- Datasets belong in `data/`, supporting media in `assets/`.
- Avoid committing heavyweight data; prefer download scripts or documented links instead.

**Next steps (optional)**
1. Generate a `requirements.txt` or `environment.yml` for fully reproducible environments.
2. Extract reusable code into a lightweight `src/` package with unit tests.
3. Add pre-commit hooks (formatters, linting) to keep notebooks and scripts consistent.
