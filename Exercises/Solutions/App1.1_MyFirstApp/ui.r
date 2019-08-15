## =========================================
##  Solution for Exercise 1   
##   < UI >
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="Exercise 1")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE)))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1", 
                                   dateRangeInput("dates", "Dates", start = "2018-1-1", end = "2018-12-31"), 
                                   plotOutput("tsplot1"), 
                                   dataTableOutput("table1")
                                   )))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
)