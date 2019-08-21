## =========================================
## Module 'DemoModule' 
## =========================================

# ! UI and server funcitons share the name. 
# ! Use namespace funciton ns() for all ids referenced in UI. 
# ! No need to use namespace in server. 

# ---- UI ---- #

demoModuleUI <- function(id, ts_names) {
  
  ns <- NS(id) # namespace
  
  fluidRow(
    box(width = 3, 
        selectInput(ns("variable"), label = "Variable", ts_names)
    ), 
    box(width = 9,
        plotOutput(ns("tsplot1")), 
        dataTableOutput(ns("table1"))
    )
  )
}

# ---- Server ---- #

demoModule <- function(input, output, session, # always include these three
                       df # include any other objects needed in the calculation. 
                       ) {

  output$tsplot1 <- renderPlot({

    plot(df$Month, df[, input$variable], "l")
    
  })
  
  output$table1 <- renderDataTable({
    
    df
    
  })
}