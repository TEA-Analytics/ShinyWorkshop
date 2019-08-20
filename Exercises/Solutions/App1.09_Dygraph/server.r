## =========================================
##  Exercise: 1-09
##   < Server >
## =========================================

server <- function(input, output) { 
  
  df <- reactive({
    
    filename <- glue("../../../Data/HistSpotMonthlyAve_{input$market}.csv")
    
    validate(need(file.exists(filename), message = glue("Data file does not exists for {input$market}")))
    
    df <- read.csv(filename)
    df$Month <- as.Date(df$Month, "%m/%d/%Y")
    df
  })
  
  output$ui_variable <- renderUI({
    
    selectInput("variable", "Variable", choices = names(df())[-1], multiple = TRUE, selected = names(df())[-1])
    
  })
  
  output$tsplot1 <- renderDygraph({

    req(input$variable)
    
    # Set up time series
    x <- xts(df()[,-1], order.by = df()[,1])
    
    # Plot
    dygraph(x) %>% dyRangeSelector()
    
  })
  
  output$table1 <- renderFormattable({
    
    temp_df <- df()[df()$Month >= input$dates[1] & df()$Month <= input$dates[2], c("Month", input$variable)]
    
    formattable(temp_df, list(SPPNorthPower_OnPeak = normalize_bar("pink"))) 
    
  })
  
  output$table2 <- renderRHandsontable({
    
    temp_df <- df()[df()$Month >= input$dates[1] & df()$Month <= input$dates[2], c("Month", input$variable)]
    
    rhandsontable(temp_df) %>% 
      hot_cols( format = "$0,0.00")
    
  })
  
}