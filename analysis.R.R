# Gene Expression Analysis of Cancer Dataset
# Author: Your Name
# Date: 2026                                                                                  
library(GEOquery)
library(limma)
library(ggplot2)
library(pheatmap)
library(clusterProfiler)
library(org.Hs.eg.db)
gset <- getGEO("GSE15852", GSEMatrix = TRUE)
data <- exprs(gset[[1]])
group <- ifelse(grepl("normal", gset[[1]]$`histopathological exam:ch1`, ignore.case = TRUE),
                "Normal", "Cancer")
group <- factor(group)
design <- model.matrix(~group)

fit <- lmFit(data, design)
fit <- eBayes(fit)

results <- topTable(fit, adjust="fdr", number=Inf)
deg <- subset(results, adj.P.Val < 0.05 & abs(logFC) > 1)
write.csv(deg, "DEG_results.csv")
ggplot(results, aes(x=logFC, y=-log10(adj.P.Val))) +
  geom_point()
topgenes <- rownames(deg)[1:50]
pheatmap(data[topgenes, ])
library(hgu133plus2.db)
library(AnnotationDbi)

genes <- rownames(deg)

gene.df <- select(hgu133plus2.db,
                  keys = genes,
                  columns = c("ENTREZID"),
                  keytype = "PROBEID")

gene.df <- na.omit(gene.df)

ego <- enrichGO(gene = gene.df$ENTREZID,
                OrgDb = org.Hs.eg.db,
                keyType = "ENTREZID",
                ont = "BP")

dotplot(ego, showCategory = 10)