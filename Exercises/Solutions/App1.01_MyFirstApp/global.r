## =========================================
##  Solution for Exercise 1-01                    # Make sure to add a header. All file names are common b/w apps. 
##   < Global >
## =========================================

# Load packages
library(shiny)
library(teadashboard)

# Data
df <- read.csv("Data/HistSpotMonthlyAve_SPP.csv")  # Note: Relative path to the app folder. 
df$Month <- as.Date(df$Month, "%m/%d/%Y")
