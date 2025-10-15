# Classic Machine Learning

Repository of classic machine learning notebooks, datasets and assets. The project has been reorganized to a professional layout.

Repository layout
- `notebooks/` — cleaned Jupyter notebooks, renamed for clarity (e.g. `Perceptron.ipynb`, `Linear_Regression.ipynb`).
- `data/` — datasets used by notebooks (CSV / TXT files).
- `assets/` — images and figures used in the notebooks.
- `scripts/` — utility scripts (includes `reorganize.sh`).

Quick start
1. Create and activate a Python environment (Python 3.9+ recommended).

	python -m venv .venv
	source .venv/bin/activate

2. Install essential packages (example):

	pip install numpy pandas scikit-learn matplotlib seaborn jupyter

3. Launch Jupyter Lab or Notebook and open files from `notebooks/`:

	jupyter lab

Files of interest
- `notebooks/Perceptron.ipynb` — perceptron implementation and experiments
- `notebooks/Linear_Regression.ipynb` — linear regression exercises and Q&A
- `notebooks/Logistic_Regression.ipynb` — logistic regression notebook
- `notebooks/Neural_Network.ipynb` — simple neural network experiments
- `data/` — datasets used by the notebooks

Contributing / Notes
- Original files and directories were renamed to remove homework identifiers and long personal IDs. If you want the original filenames preserved, the history is available in git.
- If you add new notebooks, place them under `notebooks/` and add required datasets under `data/` (never commit large binary files to the repo).

If you'd like, I can also:
- Add a `requirements.txt` or `environment.yml` for reproducibility.
- Add a small Python `src/` package for reusable code used across notebooks.
- Convert heavy notebooks into scripts for unit testing.

