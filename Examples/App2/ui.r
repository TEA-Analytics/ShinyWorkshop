## =========================================
## UI
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="My First App")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(selectInput("market", label = "Market", c("SPP", "CAISO"), selected = "SPP"), 
                                 menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE) 
                                 ))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1", 
                                   box(width = 3,
                                       title = "Input Box",
                                       uiOutput("ui_variables")
                                       ),
                                   box(width = 9,
                                        plotOutput("tsplot1"), 
                                        dataTableOutput("table1")
                                       )
                                   )))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
  , skin = "red"
)