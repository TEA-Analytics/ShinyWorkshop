## =========================================
##  Solution for Exercise 3
##   < UI >
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="Exercise 2")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(selectInput("market", label = "Market", choices = c("SPP", "CAISO")), 
                                 menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE),
                                 menuItem("Layout", tabName = "section2", icon = icon("box"))
                                 ))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "section1", 
                                   box(width = 3, title = "Inputs", status = "danger",
                                       dateRangeInput("dates", "Dates", start = "2018-1-1", end = "2018-12-31")), 
                                   box(width = 9, 
                                       plotOutput("tsplot1"), 
                                       dataTableOutput("table1")
                                   )), 
                           tabItem(tabName = "section2",
                                   column(width = 12,  box(width = 12, 
                                                           tags$h1("box1"),
                                                           tags$p("This is an exercise for layout. "))),
                                   column(width = 3, box(width = 12, "box2")),
                                   column(width = 9,
                                          box(width = 12, "box3"),
                                          box(width = 6, "box4"),
                                          box(width = 6, "box5")
                                          )
                                   )
                           ))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
)