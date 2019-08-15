###############################################
##
##  MyApp
##   << Server >>
## 
##  author: XXXX XXXX
##  created: XXX 20XX
##  
###############################################

server <- function(input, output, session) { 
  
  # Alternative login info dispaly
  output$userpanel <- renderUI({
    
    user <- ifelse(is.null(session$user), "xxxxx", session$user)
    sidebarUserPanel(
      span("Logged in as ", user),
      subtitle = a(icon("sign-out"), "Logout", href="__logout__"))
  })
  
  
}
