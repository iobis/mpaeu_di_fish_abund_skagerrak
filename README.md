# Long term monitoring of fish abundances from coastal Skagerrak

## About this dataset

It was published in BioTIME (https://biotime.st-andrews.ac.uk/selectStudy.php?study=428)

The dataset is licensed under a CC-BY license.

## Workflow

[source data](https://github.com/iobis/mpaeu_di_fish_abund_skagerrak/tree/master/data/raw) → Darwin Core [mapping script](https://github.com/iobis/mpaeu_di_fish_abund_skagerrak/blob/master/src/obisdi_general.Rmd) → generated [Darwin Core files](https://github.com/iobis/mpaeu_di_fish_abund_skagerrak/tree/master/data/processed)

## Additional metadata

References of the original data:

Barceló, C., Ciannelli, L., Olsen, E.M., Johannessen, T. & Knutsen, H. (2016) Eight decades of sampling reveal a contemporary novel fish assemblage in coastal nursery habitats. Global change biology, 22, 1155-1167.  

Olsen, E. M., Carlson, S. M., Gjøsæter, J. & Stenseth, N. C. (2009) Nine decades of decreasing phenotypic variability in Atlantic cod. Ecology Letters, 12, 622–631. doi:10.1111/j.1461-0248.2009.01311.x. 

Rogers, L. A., Stige, L. C., Olsen, E. M., Knutsen, H., Chan, K.-S. & Stenseth, N. C. (2011) Climate and population density drive changes in cod body size throughout a century on the Norwegian coast. Proceedings of the National Academy of Sciences, 108(5), 1961–1966.  

Stenseth, N. C., Bjørnstadf, O. N., Falck, W, Fromentin, J. M., Gjøsieter, J. & Gray, J. S. (1999) Dynamics of coastal cod populations: intra-and intercohort density dependence and stochastic processes. Proceedings of the Royal Society of London B: Biological Sciences, 266(1429), 1645–1654.), and was authored by Halvor Knutsen, Ebsen Moland.  

## Published dataset

* [Dataset on the IPT]({once published, link to the published dataset})
* [Dataset on OBIS]({once published, link to the published dataset})

## Repo structure

Files and directories indicated with `GENERATED` should not be edited manually.

```
├── README.md              : Description of this repository
├── LICENSE                : Repository license
├── mpaeu_di_fish_abund_skagerrak.Rproj : RStudio project file
├── .gitignore             : Files and directories to be ignored by git
│
├── data
│   ├── raw                : Source data, input for mapping script
│   └── processed          : Darwin Core output of mapping script GENERATED
│
├── docs                   : Repository website GENERATED
│
└── src
    ├── dwc_mapping.Rmd    : Darwin Core mapping script
    ├── _site.yml          : Settings to build website in docs/
    └── index.Rmd          : Template for website homepage
```
<!-- Please don't edit below this line -->
<!-- PACKAGE DETAILS -->
<br>

<!--INSTITUTIONAL_DETAILS--> Dataset edited by the OBIS secretariat.  <br><br>
<!--FUNDING_DETAILS--> The harvesting of this data to OBIS is part of the MPA Europe project. <br><br><img style="float: left; margin-right: 20px;" src="src/static/mpa_logo.png"/>MPA Europe project has been approved under HORIZON-CL6-2021-BIODIV-01-12 — Improved science based maritime spatial planning and identification of marine protected areas.<br><br>Co-funded by the European Union. Views and opinions expressed are however those of the authors only and do not necessarily reflect those of the European Union or UK Research and Innovation. Neither the European Union nor the granting authority can be held responsible for them  <br><br>

This repository was created using the
`obisdi` package [(download here)](https://github.com/iobis/obisdi/) and was inspired by the [TrIAS Project checklist recipe](https://github.com/trias-project/checklist-recipe/). This README is a direct adaptation of the TrIAS model, with slight changes.
<hr>
<br>  
<img src="src/static/obisdi_logo.png" width="60" align="left" /> OBIS Data Ingestion | Ocean Biodiversity Information System <a href = "https://obis.org/">(obis.org)</a>
