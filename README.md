# Malus-Baccata-climate-adaptation
# Climate adaptation in *Malus baccata*

## Overview

This repository contains the scripts and workflows used in the study:

**Dissecting the genetic basis of climate adaptation in wild relatives (*Malus baccata*) for climate-resilient apple breeding**

The project integrates a haplotype-resolved telomere-to-telomere (T2T) reference genome, whole-genome resequencing data, population and landscape genomic analyses, and genomic offset modeling to investigate the genetic basis of climate adaptation in the wild apple *Malus baccata*.

---

## Project scope

The analyses implemented in this repository address the following objectives:

- Construction and annotation of a haplotype-resolved T2T genome for *M. baccata*
- Characterization of genome-wide variation, including SNPs and structural variants
- Inference of population structure, genetic diversity, and selection signatures
- Identification of climate-associated genetic variants using genotype–environment association analyses
- Assessment of genetic load across populations
- Evaluation of genomic offset and vulnerability under future climate change scenarios

---

## Repository structure


---

## Directory descriptions

### 01_genome_resources/
Genome assembly, quality assessment, annotation, and variant calling based on whole-genome resequencing data.

### 02_comparative_genomics/
Whole-genome alignment, synteny analyses, and comparative genomic analyses between *M. baccata* and cultivated apple genomes.

### 03_environmental_modeling/
Processing of climatic variables, variable selection, and species distribution modeling under current and future climate scenarios.

### 04_population_genomics/
Population structure inference, genetic diversity estimation, inbreeding analysis, and detection of selection signatures using PCAdapt.

### 05_adaptive_variation/
Identification of climate-associated SNPs and structural variants through genotype–environment association analyses, and estimation of genetic load.

### 06_genomic_offset/
Genomic offset analyses integrating adaptive genetic variation with projected future climate scenarios to assess maladaptation risk.

---

## Data availability

Due to data size limitations, raw sequencing data are not included in this repository.

- Whole-genome resequencing data have been deposited in a public repository (accession number to be provided).
- The haplotype-resolved T2T genome assembly and annotation files are available through the corresponding data repository associated with the publication.
- Climate data were obtained from publicly available sources (e.g., WorldClim).

Intermediate files and derived datasets can be regenerated using the scripts provided here.

---

## Reproducibility

All analyses were conducted using publicly available software and custom scripts.

Each directory contains a `README.md` describing the purpose of the analyses and the main scripts used.  
Where applicable, software versions and key parameters are documented within individual scripts or accompanying documentation.

---

## Citation

If you use this repository or any part of the code, please cite:

> [Authors]. *Dissecting the genetic basis of climate adaptation in wild relatives (*Malus baccata*) for climate-resilient apple breeding*.  
> Journal name, year.

---

## License

This repository is released under an open-source license.  
Please see the `LICENSE` file for details.

