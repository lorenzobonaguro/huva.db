# Version 0.1.1

## The dataset in the previous version was directily from the preparation of the dataset R project, see main folder

# Version 0.1.2

## Correction of names in the annotation table of the FG500 cohort

> colnames(in_use_data$FG500$anno$PBMC) #Corrected
[1] "ID"               "gender"           "age"              "height"           "weight"           "bmi"              "living_situation"
[8] "education"        "ethnicity"        "farm_animal"      "pets"             "travel"
> colnames(datasets$FG500$anno$PBMC) # Original
[1] "ID"               "gender"           "age"              "height"           "weight"           "bmi"              "living_situation"
[8] "education"        "etnicity"         "farm_animal"      "pets"             "travel"

huva.db_012 <- huva.db::huva.db

# Version 0.1.3

## Remove the NA values form the CEDAR dataset

### First check where I have NAs
tmp_huva.db <- huva.db::huva.db

tmp <- huva.db$CEDAR$data$CD4T[1:5,1:5]

sum(is.na(tmp_huva.db$ImmVar$data$CD4T))
sum(is.na(tmp_huva.db$ImmVar$data$CD14M))
sum(is.na(tmp_huva.db$classifier$data$PBMC.1))
sum(is.na(tmp_huva.db$classifier$data$PBMC.2))
sum(is.na(tmp_huva.db$classifier$data$PBMC.3))
sum(is.na(tmp_huva.db$FG500$data$PBMC))
sum(is.na(tmp_huva.db$CEDAR$data$CD4T))
sum(is.na(tmp_huva.db$CEDAR$data$CD8T))
sum(is.na(tmp_huva.db$CEDAR$data$CD14M))
sum(is.na(tmp_huva.db$CEDAR$data$CD19B))
sum(is.na(tmp_huva.db$CEDAR$data$CD15G))
sum(is.na(tmp_huva.db$CEDAR$data$PLA))

### All the CEDAR data have a really small number of NAs which will be converted to 0 to help with the computation
tmp_huva.db$CEDAR$data$CD4T[is.na(tmp_huva.db$CEDAR$data$CD4T)] <- 0
tmp_huva.db$CEDAR$data$CD8T[is.na(tmp_huva.db$CEDAR$data$CD8T)] <- 0
tmp_huva.db$CEDAR$data$CD14M[is.na(tmp_huva.db$CEDAR$data$CD14M)] <- 0
tmp_huva.db$CEDAR$data$CD19B[is.na(tmp_huva.db$CEDAR$data$CD19B)] <- 0
tmp_huva.db$CEDAR$data$CD15G[is.na(tmp_huva.db$CEDAR$data$CD15G)] <- 0
tmp_huva.db$CEDAR$data$PLA[is.na(tmp_huva.db$CEDAR$data$PLA)] <- 0

### Checking now he numbers on NAs
sum(is.na(tmp_huva.db$ImmVar$data$CD4T))
sum(is.na(tmp_huva.db$ImmVar$data$CD14M))
sum(is.na(tmp_huva.db$classifier$data$PBMC.1))
sum(is.na(tmp_huva.db$classifier$data$PBMC.2))
sum(is.na(tmp_huva.db$classifier$data$PBMC.3))
sum(is.na(tmp_huva.db$FG500$data$PBMC))
sum(is.na(tmp_huva.db$CEDAR$data$CD4T))
sum(is.na(tmp_huva.db$CEDAR$data$CD8T))
sum(is.na(tmp_huva.db$CEDAR$data$CD14M))
sum(is.na(tmp_huva.db$CEDAR$data$CD19B))
sum(is.na(tmp_huva.db$CEDAR$data$CD15G))
sum(is.na(tmp_huva.db$CEDAR$data$PLA))

tmp_final <- tmp_huva.db$CEDAR$data$CD4T[1:5,1:5]

identical(tmp, tmp_final)

huva.db <- tmp_huva.db

usethis::use_data(huva.db, overwrite = T)

huva.db_013 <- huva.db

# Version 0.1.4
## no changes to the data package

# Version 0.1.4p
## Removing metadata from the packages not shared publicly

tmp_huva.db <- huva.db::huva.db

tmp_huva.db$FG500$anno$PBMC$living_situation <- NULL
tmp_huva.db$FG500$anno$PBMC$education <- NULL
tmp_huva.db$FG500$anno$PBMC$ethnicity <- NULL
tmp_huva.db$FG500$anno$PBMC$farm_animal <- NULL
tmp_huva.db$FG500$anno$PBMC$pets <- NULL
tmp_huva.db$FG500$anno$PBMC$travel <- NULL

huva.db <- tmp_huva.db

usethis::use_data(huva.db, overwrite = T)

huva.db_014_2 <- huva.db

rm(tmp_huva.db)

# Version 0.1.5
### Chenging the name of the classifier and 500FG to WB
tmp_huva.db <- huva.db::huva.db

# Make sure I'm working on the right version
identical(tmp_huva.db, huva.db_014_2) # YES!

names(tmp_huva.db)[2] <- "PBMC_collection"

names(tmp_huva.db$FG500$data)[1] <- "whole_blood"
names(tmp_huva.db$FG500$anno)[1] <- "whole_blood"

# Make sure nothing changed in the data
identical(huva.db::huva.db$FG500$data$PBMC, tmp_huva.db$FG500$data$whole_blood)

# Use the new version of the data
huva.db <- tmp_huva.db

usethis::use_data(huva.db, overwrite = T)

huva.db_015 <- huva.db # Save a copy of the current version

rm(huva.db, tmp_huva.db)

#Session info
info <- sessionInfo()

#Update the env
save.image("version_changes/huvadb_history.RData")

