## =========================================
##  Exercise: 1-12
##   < UI >
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="App 1-12")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(selectInput("market", label = "Market", choices = c("SPP", "CAISO", "MISO")), 
                                 menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE)))
  
  # Body
  , dashboardBody(useShinyjs(),
                  tabItems(tabItem(tabName = "section1", 
                                   box(width = 3, title = "Inputs", status = "danger",
                                       dateRangeInput("dates", "Dates", start = "2018-1-1", end = "2018-12-31"), 
                                       uiOutput("ui_variable"), 
                                       downloadButton("download1", "Download"), 
                                       checkboxInput("hide_ts", "Hide table tab", value = TRUE)
                                       ), 
                                   tabBox(id = "tab1", width = 9,
                                     tabPanel("Time Series",
                                              dygraphOutput("tsplot1")),
                                     tabPanel("Table", value = "table",
                                              formattableOutput("table1"), 
                                              rHandsontableOutput("table2"))
                                   )
                           )))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
)