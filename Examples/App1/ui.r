## =========================================
## UI
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="My App 1")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE)))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1", 
                                   selectInput("variable", label = "Variable", ts_names), 
                                   plotOutput("tsplot1"), 
                                   DTOutput("table1")
                                   )))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
  , skin = "red"
)