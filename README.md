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
- **Libraries:** ggplot2, data.table, pROC, qqman
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
   Read the methodology part in final research report in the `docs/` folders to conduct this research on your own.

---

## 📊 Example Results
- **GWAS and quality control results**
  **Table 1: Leading SNPs associated to OSCC in South African populations (p-value < 5×10⁻⁶).**

_Chr = chromosome number, rs_ID = SNP identifier, EA = effect allele, AA = alternate allele, EAF = effect allele frequency, OR = odds ratio, 95% CI = 95% confidence interval; OR calculated with reference to EA._
| Chr | rs_ID        | Genes (within/ close to) | Position (GRCh37) | EA | AA | EAF  | OR (95% CI)      | P_value         |
|-----|--------------|-------------------------|-------------------|----|----|------|------------------|-----------------|
| 1   | rs116279952  | LOC124904156            | 56826428          | A  | G  | 0.013| 2.64 (2.39-2.88) | 3.66×10⁻⁷       |
| 12  | rs10879942   | LOC105369844            | 76017475          | T  | G  | 0.210| 1.29 (1.22-1.36) | 4.27×10⁻⁶       |
| 13  | rs9589807    | GPC6                    | 94309026          | G  | A  | 0.197| 1.30 (1.23-1.38) | 4.46×10⁻⁶       |
| 17  | rs7220255    | LINC01993               | 76289418          | T  | C  | 0.386| 0.81 (0.75-0.87) | 4.47×10⁻⁶       |
| 6   | rs62413399   | SH3BGRL2                | 80297080          | T  | C  | 0.046| 1.64 (1.50-1.78) | 6.04×10⁻⁶       |
| 2   | rs116356815  | EPHA4                   | 222298536         | A  | G  | 0.126| 1.36 (1.27-1.45) | 6.13×10⁻⁶       |
| 5   | rs10070308   | FBXL17                  | 107281621         | T  | C  | 0.262| 1.25 (1.19-1.32) | 8.44×10⁻⁶       |
| 3   | rs1580082    | LINC00971               | 84843143          | C  | A  | 0.243| 0.79 (0.72-0.86) | 8.71×10⁻⁶       |
| 10  | rs1171728    | C10orf143               | 131907568         | A  | G  | 0.037| 1.70 (1.54-1.85) | 9.15×10⁻⁶       |
| 8   | rs138831048  | SLCO5A1                 | 70726388          | T  | C  | 0.039| 1.67 (1.52-1.82) | 9.28×10⁻⁶       |
| 1   | rs2797179    | NHLH2                   | 116357654         | T  | G  | 0.394| 1.23 (1.17-1.28) | 9.35×10⁻⁶       |
<img width="430" alt="pca_plot" src="https://github.com/user-attachments/assets/af0d5625-8be5-4409-a7a2-74ee8e862cf8" />
<img width="430" alt="manhattan_plot_corrected" src="https://github.com/user-attachments/assets/140c67ff-42ac-4e6c-8bb3-0bada1260cd9" />
<img width="430" alt="qq_plot" src="https://github.com/user-attachments/assets/2d0dee17-0c40-4168-90dc-16888a22348c" />

- **PRS results**
<img width="430" alt="prscsx_density_plot" src="https://github.com/user-attachments/assets/218fb6ae-bf12-46e9-8b6a-f77697c15ca6" />
<img width="430" alt="prsice_2_ROC_curve" src="https://github.com/user-attachments/assets/7a9b7906-e51e-43db-a3d1-a93425bba648" />

---

## 🙌 Acknowledgments

- Supervision: Dr Mahtab Hayaat (University of Witwatersrand)
- Funding: NRF
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
