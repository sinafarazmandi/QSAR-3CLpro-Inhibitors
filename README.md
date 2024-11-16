**Project Title:** **QSAR Study of 9,10-Dihydrophenanthrene Derivatives as SARS-CoV-2 3CLpro Inhibitors**

**Description:**
This project explores the quantitative structure-activity relationship (QSAR) of 9,10-dihydrophenanthrene derivatives as potential inhibitors of the SARS-CoV-2 3CLpro enzyme, a key target for COVID-19 treatment. The study employs advanced computational tools and statistical modeling techniques to predict inhibitory activity of the chemical structures.
This project was carried out with academic purposes as a final project for Drug Design MSc course at Tarbiat Modares University, Tehran, Iran, June 2022.

**Key Features:**
Dataset Preparation: Compiled from a peer-reviewed study [1], including molecular descriptors generated using DRAGON and HyperChem softwares from a total of 47 molecules.
Preprocessing: Data filtering, correlation analysis, and scaling were performed to ensure model robustness.

**Model Development:**
Linear Models: Stepwise MLR, PCR, GAMLR, PLS, and GAPLS.
Nonlinear Models: BRANN, GA-MLR-ANN, GAPLS-ANN, VIP-PLS-ANN, BRGNN, and MARS.
Evaluation Metrics: R² and RMSE values used for model comparison, including cross-validation approaches such as Leave-One-Out and Monte Carlo.

**Key Results:**
The GAPLS model achieved the highest R²(CV) of 0.8183 among linear models.
The BRGNN model excelled among nonlinear methods with R²(CV) = 0.88534.

**Technologies & Libraries:**
Software: HyperChem, DRAGON, MATLAB, and Python.
Libraries: libPLS, ARESLab.

**How to Use:**
Clone the repository and load the provided dataset.
Execute preprocessing scripts for descriptor analysis.
Run the modeling scripts to generate results.

**References:**
[1] Zhang, R., et al. (2021). QSAR Study of 9,10-Dihydrophenanthrene Derivatives as SARS-CoV-2 3CLpro Inhibitors. European Journal of Medicinal Chemistry, 223, 114030. https://doi.org/10.1016/j.ejmech.2021.114030





