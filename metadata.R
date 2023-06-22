# Get metadata EML file for the dataset
# This file (in xml format) is then used in the IPT to add information about the dataset
library(obisdi)

# We will use the gen_metadata family of the obisdi package
# More information see ?gen_metadata

responsible <- gen_meta_person(c("Silas", "Secretariat"),
                               c("Principe", "Team"),
                               "OBIS",
                               c("Researcher", "Management"),
                               "Secretariat",
                               electronicMailAddress = c("s.principe@unesco.org", ""))

work_title <- "Long term monitoring of fish abundances from coastal Skagerrak"

work_abstract <- c("It was originally published in BioTIME (https://biotime.st-andrews.ac.uk/selectStudy.php?study=428) and was authored by Halvor Knutsen, Ebsen Moland. The dataset is licensed under a CC-BY license.",
                   "Barceló, C., Ciannelli, L., Olsen, E.M., Johannessen, T. and Knutsen, H. (2016) Eight decades of sampling reveal a contemporary novel fish assemblage in coastal nursery habitats. Global change biology, 22, 1155-1167.",
                   "Olsen, E. M., Carlson, S. M., Gjøsæter, J. and Stenseth, N. C. (2009) Nine decades of decreasing phenotypic variability in Atlantic cod. Ecology Letters, 12, 622–631. doi:10.1111/j.1461-0248.2009.01311.x.",
                   "Rogers, L. A., Stige, L. C., Olsen, E. M., Knutsen, H., Chan, K.-S. and Stenseth, N. C. (2011) Climate and population density drive changes in cod body size throughout a century on the Norwegian coast. Proceedings of the National Academy of Sciences, 108(5), 1961–1966.",
                   "Stenseth, N. C., Bjørnstadf, O. N., Falck, W, Fromentin, J. M., Gjøsieter, J. and Gray, J. S. (1999) Dynamics of coastal cod populations: intra-and intercohort density dependence and stochastic processes. Proceedings of the Royal Society of London B: Biological Sciences, 266(1429), 1645–1654.)")

geo_coverage <- gen_meta_geocov(geographicDescription = "Coastal Skagerrak")

temp_coverage <- gen_meta_temporalcov(beginDate = 1919, endDate = 2015)

work_purpose <- "This data ingestion of the BioTIME dataset into OBIS aims to provide easier access to the data and is part of an effort linked to the MPA Europe project."

work_methods <- gen_meta_methods(steps_description = "Samples collected from Skagerrak coast.",
                                studyExtent = "Skagerrak",
                                samplingDescription = "Each station is a beach seine haul (5-700m2) where all species are counted")

work_licence <- "This work is licensed under a Creative Commons Attribution (CC-BY 4.0) License."

gen_metadata(
  title = work_title,
  creator = responsible - "Secretariat Team",
  metadataProvider = responsible - "Secretariat Team",
  language = "English",
  metadataLanguage = "English",
  abstract = work_abstract,
  associatedParty = responsible + "Secretariat Team",
  coverage = list(geo_coverage, temp_coverage),
  purpose = work_purpose,
  contact = responsible,
  methods = work_methods,
  intellectualRights = work_licence
)
