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


# Mth05_CatVar_Comp_FishEx_1_pval ----
} else if(operation$operation_id == "Mth05_CatVar_Comp_FishEx_1_pval"){
  
  func_OperationTmp <- function(operid,
                                # operorder,
                                opername,
                                operdesc,
                                analysisid,
                                methodid,
                                outputid,
                                analysisvar,
                                AGvar1,
                                AGvar2,
                                ana_adam,
                                pattern) {
    template <- "
# Operation ID:           operationidhere
# Operation name:         operationnamehere
# Operation description:  operationdeschere

tab <- table(adamhere[, c('ana_groupvar1here', 'ana_groupvar2here')])
p <- fisher.test(tab)$p.value

df3_analysisidhere_operationidhere <- data.frame(res = p,
                  AnalsysisId = 'analysisidhere',
                  MethodId = 'methodidhere',
                  OperationId = 'operationidhere',
                  OutputId = 'outputidhere',
                  pattern = 'patternhere')

"
    code <- gsub('operationidhere', operid, template)
    code <- gsub('operationnamehere', opername, code)
    code <- gsub('operationdeschere', operdesc, code)
    # code <- gsub('operorderhere', operorder, code)
    code <- gsub('analysisidhere', analysisid, code)
    code <- gsub('methodidhere', methodid, code)
    code <- gsub('outputidhere', outputid, code)
    code <- gsub('ana_varhere', analysisvar, code)
    code <- gsub('ana_groupvar1here', AGvar1, code)
    code <- gsub('ana_groupvar2here', AGvar2, code)
    code <- gsub('adamhere', ana_adam, code)
    code <- gsub('patternhere', pattern, code)
    
    return(code)
  }
#
  TeaTasting <-matrix(c(3, 1, 1, 3),
           nrow = 2,
           dimnames = list(Guess = c("Milk", "Tea"),
                           Truth = c("Milk", "Tea")))
TeaTasting  

f1 <- fisher.test(TeaTasting)
f1$p.value

R.version

  dataset %>%
  dplyr::summarise(res = n()) %>%
  dplyr::mutate(AnalsysisId = 'analysisidhere',
                MethodId = 'methodidhere',
                OperationId = 'operationidhere',
                OutputId = 'outputidhere',
                pattern = 'patternhere')


  AnalysisMethodCodeTemplate <- read_excel(xlsx_path,
                                           sheet = 'AnalysisMethodCodeTemplate')

  AnalysisMethodCodeTemplate[3,4]
    
datasets::PlantGrowth %>%
  dplyr::summarise(res = n())

#test comment







