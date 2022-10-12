# huva.db (R)
<img src="./logo/huvadb_logo.png" width="20%" style="float: left;">

Population-scale multi-layered datasets assemble extensive experimental data of different types on single healthy individuals in large cohorts, capturing genetic variation and environmental factors influencing gene expression with no clinical evidence of pathology. Variance of gene expression can be exploited to set up a conditional quasi loss- and gain-of-function “in population” experiment if expression values for the gene of interest (GOI) are available. We describe here a novel approach, called huva (human variation), that takes advantage of population-scale multi-layered data to infer gene function and relationships between phenotypes and gene expression. Within a reference dataset, huva derives two experimental groups, i.e. individuals with LOW or HIGH expression of the GOI, enabling the subsequent comparison of their transcriptional profile and functional parameters. We demonstrate that this approach robustly and efficiently identifies the phenotypic relevance of a GOI, allows the stratification of genes according to shared biological functions, and we further generalized this concept to almost 16,000 genes in the human blood transcriptome. Additionally, we describe how huva predicts the phenotype of naturally occurring activating mutations in humans. Here, huva predicts monocytes rather than lymphocytes to be the major cell type in the pathophysiology of STAT1 activating mutations, evidence which was validated in a cohort of clinically characterized patients.

## Aim of the *huva.db* package
With the *huva.db* project we provide a pre-formatted *huva_dataset* for human variation analysis. We include here several dataset: FG500, ImmVar, CEDAR, CLASSIFIER. This package is meant to be used in combination with the set of functions provided in the [*huva* package](https://github.com/lorenzobonaguro/huva). 

## how to install *huva.db*
We suggest to use *huva* and *huva.db* with the pre-built [docker image](https://hub.docker.com/r/lorenzobonaguro/huva_docker)

If you want to install *huva.db* on your system, you can download the source code from [Zenodo](https://doi.org/10.5281/zenodo.7071266). 

**Note:** Installation from Git (devtools) would fail because the git repository only contains the code but not the database due to size limitations.

## Usage
For detailed informations usage check the *huva vignette* and the documentation of each function

## How to cite *huva*
If you use *huva.db* in your research project consider citing us [Bonaguro et al. iScience, 2022](https://www.cell.com/iscience/fulltext/S2589-0042(22)01600-5#%20).

## Contact or follow us
For any problem of question regrding the *huva.db* package or this repositoy or you just want to be up to date on what is coming next, send us an [email](mailto:lorenzobonaguro@uni-bonn.de) or follow us:  

<img src="./logo/twitter.png" width="12%" style="float: left;">  

[@LorenzoBonaguro](https://twitter.com/LorenzoBonaguro)  
[@AschenbrennerAC](https://twitter.com/AschenbrennerAC)  
[@LabSchultze](https://twitter.com/LabSchultze)