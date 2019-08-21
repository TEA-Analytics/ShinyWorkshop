## =========================================
##  Exercise: 2-03
##   < Module>
## =========================================

# ---- UI ---- #

# ! Use namespace funciton ns() for all ids referenced within UI. 

demoModuleUI <- function(id) {
  
  ns <- NS(id) # namespace
  
  fluidRow(
    box(width = 3, title = "Inputs", status = "danger",
        dateRangeInput(ns("dates"), "Dates", start = "2018-1-1", end = "2018-12-31")
    ), 
    box(width = 9, 
        plotOutput(ns("tsplot1")), 
        dataTableOutput(ns("table1"))
  ))
  
}

# ---- Server ---- #

demoModule <- function(input, output, session, # always include these three
                       market) {

  df <- reactive({
    
    filename <- glue("../../../Data/HistSpotMonthlyAve_{market}.csv")
    
    if(!file.exists(filename)) stop(safeError(glue("Data was not found for {market}.")))
    
    df <- read.csv(filename)
    df$Month <- as.Date(df$Month, "%m/%d/%Y")
    df
  })
  
  output$tsplot1 <- renderPlot({
    
    matplot(df()$Month, df(), "l", xlim = input$dates)
    
  })
  
  output$table1 <- renderDataTable({
    
    df()[df()$Month >= input$dates[1] & df()$Month <= input$dates[2], ]
    
  })
  
  return(df)
}
