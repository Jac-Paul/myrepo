library(siera)
library(tidyverse)
library(readxl)
library(splitstackshape)
library(readr)

json_path <- file.path(paste0(getwd(),"/siera/json/Common Safety Displays.json"))

ADaM_folder <- file.path(paste0(getwd(),"/siera/csv_adam"))

output_path <- file.path(paste0(getwd(),"/siera/outputs"))

xlsx_path <- file.path(paste0(getwd(),"/siera/xlsx/Common Safety Displays - Copy.xlsx"))

readARS(json_path,output_path,ADaM_folder)

readARS_xlsx(xlsx_path,output_path,ADaM_folder)

TeaTasting <-matrix(c(3, 1, 1, 3),
                    nrow = 2,
                    dimnames = list(Guess = c("Milk", "Tea"),
                                    Truth = c("Milk", "Tea")))
TeaTasting  

f1 <- fisher.test(TeaTasting)
f1$p.value

R.version

AnalysisMethodCodeTemplate <- read_excel(xlsx_path,sheet = 'AnalysisMethodCodeTemplate')

dataset %>%
  dplyr::summarise(res = n()) %>%
  dplyr::mutate(AnalsysisId = 'analysisidhere',
                MethodId = 'methodidhere',
                OperationId = 'operationidhere',
                OutputId = 'outputidhere',
                pattern = 'patternhere')

AnalysisMethodCodeTemplate[3,4]














