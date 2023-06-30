### Add details to the files
library(obisdi)

add_funding(fund_message = "The harvesting of this data to OBIS is part of the MPA Europe project.",
            # Here we use a little trick to supply all info we want
            fund_name = '<br><br><img style="float: left; margin-right: 20px;" src="src/static/mpa_logo.png"/>MPA Europe project has been approved under HORIZON-CL6-2021-BIODIV-01-12 — Improved science based maritime spatial planning and identification of marine protected areas.<br><br>Co-funded by the European Union. Views and opinions expressed are however those of the authors only and do not necessarily reflect those of the European Union or UK Research and Innovation. Neither the European Union nor the granting authority can be held responsible for them')
            # On footer.html, remove "src/" from the image, because it points to another folder

add_institution(inst_message = "Dataset edited by",
                inst_name = "the OBIS secretariat.")

add_gitrepo("iobis")

# After the dataset was downloaded ----
metadata <- read.csv("data/raw/metadata_428.csv")

add_metadata_readme(
  data.frame(
    description = "Samples are collected from the Skagerrak coast and each station (we have coordinates) is a beach seine haul (5-700m2) where all species are counted.",
    reponame = "BioTIME (https://biotime.st-andrews.ac.uk/selectStudy.php?study=428)",
    doi = "Barceló, C., Ciannelli, L., Olsen, E.M., Johannessen, T. & Knutsen, H. (2016) Eight decades of sampling reveal a contemporary novel fish assemblage in coastal nursery habitats. Global change biology, 22, 1155-1167.
    Olsen, E. M., Carlson, S. M., Gjøsæter, J. & Stenseth, N. C. (2009) Nine decades of decreasing phenotypic variability in Atlantic cod. Ecology Letters, 12, 622–631. doi:10.1111/j.1461-0248.2009.01311.x
    Rogers, L. A., Stige, L. C., Olsen, E. M., Knutsen, H., Chan, K.-S. & Stenseth, N. C. (2011) Climate and population density drive changes in cod body size throughout a century on the Norwegian coast. Proceedings of the National Academy of Sciences, 108(5), 1961–1966.
    Stenseth, N. C., Bjørnstadf, O. N., Falck, W, Fromentin, J. M., Gjøsieter, J. & Gray, J. S. (1999) Dynamics of coastal cod populations: intra-and intercohort density dependence and stochastic processes. Proceedings of the Royal Society of London B: Biological Sciences, 266(1429), 1645–1654.",
    date = "2016-01-01",
    authors = c("Halvor Knutsen, Ebsen Moland"),
    license = toupper(metadata$CONT_1_MAIL[1])
  )
) # Need reformating after pasted on the README.
