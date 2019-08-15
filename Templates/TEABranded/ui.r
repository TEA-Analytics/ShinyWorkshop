###############################################
##
##  MyApp
##   << UI >>
## 
##  author: XXXX XXXX
##  created: XXX 20XX
##  
###############################################

ui <- dashboardPage(
  
  #---- Header ----#
  dashboardHeader(title ="MyApp"), 
  
  #---- Sidebar ----#
  dashboardSidebar(
    
    # Skip default longin info display
    tags$head(tags$style(HTML('.shiny-server-account { display: none; }'))),
    
    sidebarMenu(menuItem("Section 1", tabName = "section1", icon = icon("cubes"), selected=TRUE), 
                menuItem("Section 2", icon = icon("cube"), 
                         menuSubItem("Section 2.1", tabName = "section2_1"), 
                         menuSubItem("Section 2.2", tabName = "section2_2")), 
                menuItem("About", tabName = "about", icon = icon("question")), 
                uiOutput("userpanel")
                )
  ),
  
  #---- Body ----#
  dashboardBody(
    
    tabItems(tabItem(tabName = "section1", 
                     box(width=12, "box1"), 
                     box(width = 3, "box2"), 
                     box(width = 9, "box3")), 
             tabItem(tabName = "section2_1", 
                     column(width = 3, box(width = 12, "box4")), 
                     column(width = 9, 
                            box(width=12, "box5"), 
                            box(width=12, "box6"))
                     ),
             tabItem(tabName = "section2_2", 
                     fluidRow()),
             
             # About
             tabItem(tabName = "about", 
                     column(8, box(title = "Development Notes", 
                                   width = 12, 
                                   tags$div("Original Developer: XXXX", tags$br(), 
                                            "Original Development Year: XXXX", tags$br(), 
                                            "Source:", tags$a(href="https://github.com/TEA-Analytics/XXXX", "https://github.com/TEA-Analytics/XXXX"), tags$br(), 
                                            "Maintainer: XXX XXX (xxxx@teainc.org)", tags$br(), 
                                            "Last Modified Month: XXX 20XX"
                                            )
                                   )
                            ), 
                     column(4, img(src = "xxxx.png", align = "middle", width = "400", height = "120"))
                     )
             )
    ),
  
  #---- Footer ----#
  dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL),
)
