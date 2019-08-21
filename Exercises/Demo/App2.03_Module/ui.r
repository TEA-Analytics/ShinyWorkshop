## =========================================
##  Exercise: 2-03
##   < UI >
## =========================================

ui <- dashboardPage(
  
  # Header
  dashboardHeader(title ="App 2-03")
  
  # Sidebar
  , dashboardSidebar(sidebarMenu(menuItem("SPP", tabName = "spp", selected=TRUE), 
                                 menuItem("CAISO", tabName = "caiso"),
                                 menuItem("MISO", tabName = "miso"),
                                 textOutput("test")))
  
  # Body
  , dashboardBody(tabItems(tabItem(tabName = "spp", demoModuleUI("SPP")),
                           tabItem(tabName = "caiso", demoModuleUI("CAISO")),
                           tabItem(tabName = "miso", demoModuleUI("MISO"))
                           ))
  
  # Branding
  , dashboardFooter(brandImageURL = NULL, brandLinkTargetURL = NULL)
)