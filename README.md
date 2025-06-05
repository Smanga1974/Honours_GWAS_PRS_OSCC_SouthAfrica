# 🧬 Honours GWAS & PRS: OSCC in South Africa

Welcome to the **Honours_GWAS_PRS_OSCC_SouthAfrica** repository!  
This project focuses on Genome-Wide Association Studies (GWAS) and Polygenic Risk Score (PRS) analysis for Oral Squamous Cell Carcinoma (OSCC) within South African populations.

---

## 🧑‍🔬 Project Overview

This repository contains code, pipelines, and documentation for conducting GWAS and PRS analyses on OSCC datasets. The goal is to identify genetic variants associated with OSCC and develop risk prediction models tailored to South African cohorts.

---

## ✨ Features

- **GWAS Analysis:**  
  Quality control, association testing, and visualization of genome-wide data.

- **PRS Pipeline:**  
  Construction and evaluation of polygenic risk scores using state-of-the-art tools and methods.

- **Reproducible Pipelines:**  
  Modular scripts and workflows for seamless data analysis.

- **Customizable & Scalable:**  
  Designed to run on HPC clusters and adaptable for other complex disease studies.

---

## 🛠️ Tech Stack & Tools

- **Languages:** R, Python, Bash
- **Libraries:** pandas, numpy, matplotlib, seaborn, ggplot2, data.table, pROC
- **Bioinformatics Tools:** PLINK, GEMMA, PRSice-2, PRScsx, H3AGWAS pipeline
- **Other Tools:** Git, Linux, HPC clusters

---

## 📁 Project Structure

```
Honours_GWAS_PRS_OSCC_SouthAfrica/
│
├── data/                # Raw and processed datasets (not included in repo)
├── scripts/             # Analysis scripts (R, Python, Bash)
├── results/             # Output: figures, tables, intermediate files
├── docs/                # Documentation and references
├── environment.yml      # Environment setup file (if using Conda)
├── README.md            # Project documentation
└── .gitignore
```

---

## 🚀 Getting Started

1. **Clone this repository:**
   ```sh
   git clone https://github.com/Smanga1974/Honours_GWAS_PRS_OSCC_SouthAfrica.git
   ```
2. **Install dependencies:**  
   Use the provided `environment.yml` or manually install required tools and packages.

3. **Prepare your data:**  
   Place your input files in the `data/` directory as described in the documentation.

4. **Run analyses:**  
   Follow the scripts and instructions in the `scripts/` and `docs/` folders.

---

## 📊 Example Results

<img width="437" alt="pca_plot" src="https://github.com/user-attachments/assets/af0d5625-8be5-4409-a7a2-74ee8e862cf8" />
<img width="437" alt="manhattan_plot_corrected" src="https://github.com/user-attachments/assets/140c67ff-42ac-4e6c-8bb3-0bada1260cd9" />
<img width="437" alt="prscsx_density_plot" src="https://github.com/user-attachments/assets/218fb6ae-bf12-46e9-8b6a-f77697c15ca6" />
<img width="437" alt="prsice_2_ROC_curve" src="https://github.com/user-attachments/assets/7a9b7906-e51e-43db-a3d1-a93425bba648" />
<img width="437" alt="qq_plot" src="https://github.com/user-attachments/assets/2d0dee17-0c40-4168-90dc-16888a22348c" />

---

## 🙌 Acknowledgments

- Supervision: [Add supervisor names/institutions here]
- Funding: [Add funding bodies if any]
- Tools and pipelines: PLINK, GEMMA, PRSice-2, H3AGWAS, and more

---

## 📚 References

- [PLINK](https://www.cog-genomics.org/plink/)
- [PRSice-2](https://www.prsice.info/)
- [H3AGWAS](https://github.com/h3abionet/h3agwas)

---

## 📬 Contact

For questions, suggestions, or collaboration opportunities, please contact:  
**smangaliso.oageng@gmail.com**

---

_This repository is maintained by Smangaliso Oageng._
