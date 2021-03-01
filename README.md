# COVID19-metaclustering
Pipelines to describe COVID-19 subphenotypes regarding severity patterns through a two-stage clustering approach. First, sets of clusters are obtained from age-gender stratified groups using patient phenotypes and demographic features. Second, the total set of clusters are clustered again according to their aggregated features, leading to a final set of meta-clusters of age-gender unbiased COVID-19 subphenotypes. Additional source and temporal variability assessments are included as part of data quality analyses.

## Outline
The COVID-19 infectious disease has led since December 2019 to a global pandemic that remains under control measures. Researchers around the world are making great efforts for a comprehensive understanding of COVID-19 from various data sources and modalities, with the goal of improving prognosis and treatments. 

This work shows the results of a two-stage unsupervised Machine Learning (ML) approach, namely meta-clustering, to identify potential subphenotypes of COVID-19 patients from clinical phenotypes and demographic features. Stratification on gender and age groups was included to reduce potential confounding factors since age and gender are highly correlated with comorbidity, habits and mortality.

This work is part of the [COVID-19 Subgroup Discovery and Exploration Tool (COVID-19 SDE Tool)](http://covid19sdetool.upv.es/) project from the [Biomedical Data Science Lab](http://bdslab.upv.es/) of the Universitat Politècnica de València, Spain.

## Application to the Mexico Government COVID-19 open data

The pipeline is described in the [Mexico Government COVID-19 meta-clustering tutorial notebook](http://personales.upv.es/carsaesi/covid19-metaclustering/Meta_clustering_tutorial.html). 

We analyzed the COVID-19 [open data from the Mexican Government](https://www.gob.mx/salud/documentos/datos-abiertos-152127) release at 2020-11-02. After processing the data with proper inclusion criteria, the final sample comprises patient-level epidemiological and clinical data from 778 692 SARS-CoV-2 patients from January 13, 2020, to September 30, 2020. 

Inter-patient variability was analyzed by combining dimensionality reduction and hierarchical clustering methods. We produced cluster analyses for all combinations of gender and age groups (<18, 18-49, 50-64, and >64). For each group, the optimum number of clusters in this work were selected combining a quantitative approach using Silhouette coefficient, and a qualitative method through a subgroup expert inspection via visual analytics. Using the features of the resultant age-gender clusters, we performed a meta-clustering analysis to provide an overall description of the population.

From the first clustering stage we established 56 age-gender specific clusters. Next, in the meta-clustering stage we established eleven meta-clusters showing clinically distinguishable features and severity outcomes. These mete-clusters provide the bases to COVID-19 patient stratification based on comorbidities, habits, demographic characteristics, geographic data and type of clinical institutions, as well as revealing the correlations between the above characteristics thereby help to anticipate the possible clinical outcomes for every specifically characterized patient.

For further exploration of the results, please visit the [Mexico Government results tab](http://covid19sdetool.upv.es/?tab=mexicoGov) from our [COVID-19 SDE Tool](http://covid19sdetool.upv.es/).

<img src="https://github.com/bdslab-upv/covid19-metaclustering/blob/main/data/PCA_Plot.png">

*Principal component analysis (PCA) plot of the resultant 56 age-gender clusters*

## How to use it
1. Download the whole repository.
2. Run the `Meta_clustering_tutorial.Rmd` file or use your own script at the root directory following the [tutorial notebook](http://personales.upv.es/carsaesi/covid19-metaclustering/Meta_clustering_tutorial.html) (which is the output of running the Rmd file).
* Optionally, before step 2, you can run the `CovMexico_Data_Preprocessing.ipynb` file to translate the newest Spanish version of [Mexican Government dataset](https://www.gob.mx/salud/documentos/datos-abiertos-152127) to English creating some additional variables of interest, or use directly `COVID19_MEXICO_LATEST_DATA.csv` dataset.
* Additionally, you can run the `EHRSourceVariablity_tutorial.Rmd` and `EHRTemporalVariability_tutorial.Rmd` to assess further the variability between distinct sources populating the research repositories as well as the temporal variability of the dataset. These tutorials are already available at [EHRSourceVariablity_tutorial.html](http://personales.upv.es/carsaesi/covid19-metaclustering/EHRSourceVariability_tutorial.html) and [EHRTemporalVariability_tutorial.html](http://personales.upv.es/carsaesi/covid19-metaclustering/EHRTemporalVariability_tutorial.html).

## Citation
If you use this code please cite:

<blockquote style='font-size:14px'>Lexin Zhou, Nekane Romero, Juan Martínez-Miranda, J Alberto Conejero, Juan M García-Gómez, Carlos Sáez. Heterogeneity in COVID-19 severity patterns among age-gender groups: an analysis of 778 692 Mexican patients through a meta-clustering technique. Preprint published in medRxiv. https://doi.org/10.1101/2021.02.21.21252132 </blockquote>

## Credits
- **Version**: 1.0.0
- **Authors**: Lexin Zhou (UPV), Nekane Romero (UPV), Juan Martínez-Miranda (CICESE-UT3), J Alberto Conejero (UPV), Juan M García-Gómez (UPV), Carlos Sáez (UPV)
- **Maintaner**: Lexin Zhou (UPV), Carlos Sáez (UPV)

Copyright: 2021 - Biomedical Data Science Lab, Universitat Politècnica de Valècia, Spain (UPV)

If you are interested in collaborating in this work please [contact us](mailto:carsaesi@upv.es).
