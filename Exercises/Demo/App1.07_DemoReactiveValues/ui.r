## =========================================
## Demo 1-07
##  < UI > 
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="Counter")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE) 
                                 ))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1", 
                                   box(width = 3,
                                       title = "Input Box",
                                       actionButton("add1", "+ 1"),
                                       actionButton("sub1", "- 1"),
                                       actionButton("reset", "set to 0")
                                       ),
                                   box(width = 9,
                                       textOutput("count")
                                       )
                                   )))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
  , skin = "red"
)