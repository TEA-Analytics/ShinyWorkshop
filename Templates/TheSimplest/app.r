###############################################
##
##  Shiny Simple Template
##  
###############################################

## =========================================
## Global
## =========================================

# Load packages
library(shiny)
library(teadashboard)

## =========================================
## UI
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="MySimpleApp")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu())
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1")))

  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
  , skin = "red"
)

## =========================================
## Server
## =========================================

server <- function(input, output) { 

}

## =========================================
## Run App
## =========================================

# Run App
shinyApp(ui, server)
