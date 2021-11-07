# Final Project Outline
## Title
Differential Gene Expression in TCGA within early stage (from stage 0 to stage IIB) Breast Adenocarcinomas cancer comparing two major primary diagnosis type  infiltrating ductular carcinoma and lobular Carcinoma by using DeSEQ2.

## Author
CHIA-YUN KUO

## Overview of project

In this project, I will identify differentially expressed genes between Breast Cancer Adenocarcomas for the primary diagnosis type: infiltrating ductular carcinoma and lobular Carcinoma. This analysis will utilize the package DeSEQ2 and follow the specific vignette: [http://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html](DESEQ). For this analysis, I'll use the TCGA cohort and have identified `740` ht-seq counts files for infiltrating ductular carcinoma and `135` ht-seq counts files  for lobular Carcinoma.

Vignette: [http://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html
](http://bioconductor.org/packages/release/bioc/vignettes/DESeq2/inst/doc/DESeq2.html)

## Data

I will use the data from [https://portal.gdc.cancer.gov/repository](https://portal.gdc.cancer.gov/repository). Examining clinical data, there are [740 htseq-counts samples](https://portal.gdc.cancer.gov/repository?filters=%7B%22op%22%3A%22and%22%2C%22content%22%3A%5B%7B%22content%22%3A%7B%22field%22%3A%22cases.case_id%22%2C%22value%22%3A%5B%22set_id%3AzhSX83wBkmBOIo2-pgsW%22%5D%7D%2C%22op%22%3A%22IN%22%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.analysis.workflow_type%22%2C%22value%22%3A%5B%22HTSeq%20-%20Counts%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_category%22%2C%22value%22%3A%5B%22transcriptome%20profiling%22%5D%7D%7D%5D%7D) are in the type of infiltrating ductular carcinoma, and [135 htseq-counts samples](https://portal.gdc.cancer.gov/repository?filters=%7B%22op%22%3A%22and%22%2C%22content%22%3A%5B%7B%22content%22%3A%7B%22field%22%3A%22cases.case_id%22%2C%22value%22%3A%5B%22set_id%3ATGGg83wBZuFHS_aMGPs0%22%5D%7D%2C%22op%22%3A%22IN%22%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.analysis.workflow_type%22%2C%22value%22%3A%5B%22HTSeq%20-%20Counts%22%5D%7D%7D%2C%7B%22op%22%3A%22in%22%2C%22content%22%3A%7B%22field%22%3A%22files.data_category%22%2C%22value%22%3A%5B%22transcriptome%20profiling%22%5D%7D%7D%5D%7D) are lobular Carcinoma . 


## Milestone 1

**Due Date:** Thursday November 11th

* Download all related htseq-counts files
* Data clean and inspection
* Load them into  vignette through HT-SEQ steps.


## Milestone 2

**An initial completion of vignette.** I will complete an entire first draft of analysis analyzed through the vignette.Data loaded into vignette (through htseq), for seeking feedback.  Not all sections in the writing will be completed, but will be final project.


## Deliverable

**Due Date:** December 3rd

A complete repository with clear documentation and description of your analysis and results.











