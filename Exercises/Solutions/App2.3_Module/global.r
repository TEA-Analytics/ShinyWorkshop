## =========================================
## Global
## =========================================

# Load packages
library(shiny)
library(teadashboard)
library(glue)

# Data
df <- read.csv("../../Data/HistSpotMonthlyAve_SPP.csv")
df$Month <- as.Date(df$Month, "%m/%d/%Y")
ts_names <- names(df)[-1] 

# Use Module
source("demoModule.R")
