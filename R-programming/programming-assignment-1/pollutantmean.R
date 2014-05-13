## Programming Assignment 1: Air Pollution
## Part 1: Pollutant Mean

## 2014-05-12 by Ryan B. Harvey

## Coursera: R Programming
## Instructor: Roger D. Peng
## Johns Hopkins University
library(stringr)

pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  prevdir <- getwd()
  setwd(directory)
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  files = str_c(str_pad(id, 3, pad="0"),".csv")
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  setwd(prevdir)
}

## Example output:

## source("pollutantmean.R")
## pollutantmean("specdata", "sulfate", 1:10)
## [1] 4.064
## pollutantmean("specdata", "nitrate", 70:72)
## [1] 1.706
## pollutantmean("specdata", "nitrate", 23)
## [1] 1.281
