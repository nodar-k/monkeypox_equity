## Files
There should be three files you can download:
| File | Description |
| ---- | ----------- |
| `DATA_WITH_LINKS.CSV` | A complete listing of all 50 states with the links that were accessed to download the data. |
| `MPOX_DATA_TABLE.CSV` | The dataset that you would use in R, which is subsetted to only states with complete data needed for the analysis. |
| `DescriptStats.R` | The R script that will transformed the wide format dataset into the format needed to run the analyses. |

## Codebook
### DATA_WITH_LINKS

| Variable | Description | 
| ---- | ----------- |
| `State` | Name of the state |
| `FIPS` | Applicable FIPS code of the state | 
| `Link` | Link to where the data was sourced from for the state | 
| `Cases - Date Accessed` | When the data was accessed for case data |
| `Cases - Data Date` | When the data was uploaded on the source page |
| `Vaccination - Date Accessed` | When the data was accessed for vaccine data |
| `Vaccination - Data Date` | When the data was uploaded on the source page |
| `Cases - AI\AK` | Number of cases for those identifying as American Indian or Alaskan Native |
| `Cases - API` | Number of cases for those identifying as Asian, Hawaiian, or Pacific Islander |
| `Cases - B,NH` | Number of cases for those identifying as Black, Non-Hispanic |
| `Cases - H` | Number of cases for those identifying as Hispanic |
| `Cases - W,NH` | Number of cases for those identifying as White, Non-Hispanic |
| `Cases - Multiple or Other` | Number of cases for those identifying as multiple or other races |
| `Cases - Missing` | Number of cases reported as missing race/ethnicity data |
| `Cases - Unknown` | Number of cases reported as unknown race/ethnicity |
| `Cases - Total` | Total number of cases reported for the state, note in some instances that Hispanic is treated as a race category which adds up to the total. In other instances, it is subsetted among the race categories |
| `Vaccination - AI\AK` | Number of vaccinated individuals (or doses) for those identifying as American Indian or Alaskan Native |
| `Vaccination - API` | Number of vaccinated individuals (or doses) for those identifying as Asian, Hawaiian, or Pacific Islander |
| `Vaccination - B,NH` | Number of vaccinated individuals (or doses) for those identifying as Black, Non-Hispanic |
| `Vaccination - H` | Number of vaccinated individuals (or doses) for those identifying as Hispanic |
| `Vaccination - W,NH` | Number of vaccinated individuals (or doses) for those identifying as White, Non-Hispanic |
| `Vaccination - Multiple or Other` | Number of vaccinated individuals (or doses) for those identifying as multiple or other races |
| `Vaccination - Missing` | Number of vaccinated individuals (or doses) reported as missing race/ethnicity data |
| `Vaccination - Unknown` | Number of vaccinated individuals (or doses) reported as unknown race/ethnicity |
| `Vaccination - Total` | Total number of vaccinated individuals (or doses) reported for the state, note in some instances that Hispanic is treated as a race category which adds up to the total. In other instances, it is subsetted among the race categories |
| `Vaccine Unit` | The unit for reported vacccinations: either people or doses.

### MPOX_DATA_TABLE

| Variable | Description | 
| ---- | ----------- |
| `State` | Name of the state |
| `FIPS` | Applicable FIPS code of the state | 
| `C_AIAK` | Number of cases for those identifying as American Indian or Alaskan Native |
| `C_API` | Number of cases for those identifying as Asian, Hawaiian, or Pacific Islander |
| `C_BNH` | Number of cases for those identifying as Black, Non-Hispanic |
| `C_H` | Number of cases for those identifying as Hispanic |
| `C_WNH` | Number of cases for those identifying as White, Non-Hispanic |
| `C_MO` | Number of cases for those identifying as multiple or other races |
| `C_MISS` | Number of cases reported as missing race/ethnicity data |
| `C_UNK` | Number of cases reported as unknown race/ethnicity |
| `C_MUNK` | Total of C_MISS and C_UNK |
| `C_TOT` | Total number of cases reported for the state, note in some instances that Hispanic is treated as a race category which adds up to the total. In other instances, it is subsetted among the race categories |
| `C_AIAK_P` | Proportion of total cases for those identifying as American Indian or Alaskan Native |
| `C_API_P` | Proportion of total cases for those identifying as Asian, Hawaiian, or Pacific Islander |
| `C_BNH_P` | Proportion of total cases for those identifying as Black, Non-Hispanic |
| `C_H_P` | Proportion of total cases for those identifying as Hispanic |
| `C_WNH_P` | Proportion of total cases for those identifying as White, Non-Hispanic |
| `C_MO_P` | Proportion of total cases for those identifying as multiple or other races |
| `C_MUNK_P` | Proportion of total cases of C_MISS and C_UNK |
| `V_AIAK` | Number of vaccinated individuals (or doses) for those identifying as American Indian or Alaskan Native |
| `V_API` | Number of vaccinated individuals (or doses) for those identifying as Asian, Hawaiian, or Pacific Islander |
| `V_BNH` | Number of vaccinated individuals (or doses) for those identifying as Black, Non-Hispanic |
| `V_H` | Number of vaccinated individuals (or doses) for those identifying as Hispanic |
| `V_WNH` | Number of vaccinated individuals (or doses) for those identifying as White, Non-Hispanic |
| `V_MO` | Number of vaccinated individuals (or doses) for those identifying as multiple or other races |
| `V_MISS` | Number of vaccinated individuals (or doses) reported as missing race/ethnicity data |
| `V_MUNK` | Number of vaccinated individuals (or doses) reported as unknown race/ethnicity |
| `V_TOT` | Total number of vaccinated individuals (or doses) reported for the state, note in some instances that Hispanic is treated as a race category which adds up to the total. In other instances, it is subsetted among the race categories |
| `V_AIAK_P` | Proportion of vaccinated individuals (or doses) for those identifying as American Indian or Alaskan Native |
| `V_API_P` | Proportion of vaccinated individuals (or doses) for those identifying as Asian, Hawaiian, or Pacific Islander |
| `V_BNH_P` | Proportion of vaccinated individuals (or doses) for those identifying as Black, Non-Hispanic |
| `V_H_P` | Proportion of vaccinated individuals (or doses) for those identifying as Hispanic |
| `V_WNH_P` | Proportion of vaccinated individuals (or doses) for those identifying as White, Non-Hispanic |
| `V_MO_P` | Proportion of vaccinated individuals (or doses) for those identifying as multiple or other races |
| `V_MISS_P` | Proportion of vaccinated individuals (or doses) reported as missing race/ethnicity data |
| `V_MUNK_P` | Proportion of vaccinated individuals (or doses) reported as unknown race/ethnicity |
| `IC_RATIO_AIAK` | The ratio of # immunized to # cases among those identifying as American Indian or Alaskan Native |
| `IC_RATIO_API` | The ratio of # immunized to # cases among those identifying as Asian, Hawaiian, or Pacific Islander |
| `IC_RATIO_BNH` | The ratio of # immunized to # cases among those identifying as Black, Non-Hispanic |
| `IC_RATIO_H` | The ratio of # immunized to # cases among those identifying as Hispanic |
| `IC_RATIO_WNH` | The ratio of # immunized to # cases among those identifying as White, Non-Hispanic |
| `IC_RATIO_MO` | The ratio of # immunized to # cases among those identifying as multiple or other races |
| `IC_RATIO_MISS` | The ratio of # immunized to # cases among those identifying as missing race/ethnicity data |
| `IC_RATIO_MUNK` | The ratio of # immunized to # cases among those identifying as unknown race/ethnicity |
