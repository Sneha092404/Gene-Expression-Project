🧬 Gene Expression Analysis of Cancer Dataset

📌 Project Overview

This project focuses on the analysis of gene expression data obtained from a publicly available cancer dataset from the . The objective is to identify differentially expressed genes (DEGs) between cancer and normal samples and to interpret their biological significance.

---

🎯 Objectives

- To preprocess and analyze gene expression data
- To identify significantly upregulated and downregulated genes
- To visualize gene expression patterns using statistical plots
- To perform functional enrichment analysis to understand biological mechanisms involved in cancer

---

🔬 Methodology

1️⃣ Data Acquisition

- Dataset retrieved from GEO (GSE15852)

2️⃣ Data Processing

- Expression matrix extraction
- Sample classification (Cancer vs Normal)

3️⃣ Differential Expression Analysis

- Performed using the limma package in
- Applied statistical filtering:
  - Adjusted p-value < 0.05
  - |logFC| > 1

4️⃣ Data Visualization

- Volcano Plot (significant gene distribution)
- Heatmap (gene expression clustering)

5️⃣ Functional Enrichment Analysis

- Gene Ontology (GO) analysis using clusterProfiler
- Identification of enriched biological processes

---

📊 Results

- Identification of key differentially expressed genes associated with cancer
- Clear separation between cancer and normal samples in heatmap clustering
- Volcano plot highlighting significantly upregulated and downregulated genes
- GO enrichment analysis revealed involvement in:
  - Cell cycle regulation
  - Apoptosis
  - DNA repair mechanisms
  - Immune response pathways

---

🧠 Biological Interpretation

The enrichment analysis indicates that the identified genes play a critical role in cancer progression. Processes such as uncontrolled cell division, resistance to apoptosis, and genomic instability were significantly enriched, which are hallmark characteristics of cancer biology.

---

🛠 Tools & Technologies

- R Programming
- limma
- ggplot2
- pheatmap
- clusterProfiler
- org.Hs.eg.db

---

📁 Project Structure

- "DEG_results.csv" → List of significant genes
- "volcano_plot.png" → Visualization of gene expression changes
- "heatmap.png" → Gene clustering representation
- "GO_plot.png" → Functional enrichment analysis
- "analysis.R" → Complete analysis script

---

📚 Data Source

- NCBI GEO Database (GSE15852)

---

🔚 Conclusion

This study successfully identified differentially expressed genes and their associated biological pathways in cancer. The results provide insights into the molecular mechanisms underlying cancer progression and highlight potential targets for further research.

---

👩‍🔬 Author

Sneha Galimotu                  
