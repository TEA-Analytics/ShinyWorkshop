## =========================================
##  Exercise 1-05
##   < UI >
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="App 1-05")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(selectInput("market", label = "Market", choices = c("SPP", "CAISO")), 
                                 menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE)))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1", 
                                   box(width = 3, title = "Inputs", status = "danger",
                                       dateRangeInput("dates", "Dates", start = "2018-1-1", end = "2018-12-31"), 
                                       uiOutput("ui_variable")
                                       ), 
                                   box(width = 9, 
                                       plotOutput("tsplot1"), 
                                       dataTableOutput("table1")
                                   ))))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
)