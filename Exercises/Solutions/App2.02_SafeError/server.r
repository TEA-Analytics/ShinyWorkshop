## =========================================
##  Exercise: 2-02
##   < Server >
## =========================================

server <- function(input, output) { 
  
  df <- reactive({
    
    filename <- glue("../../../Data/HistSpotMonthlyAve_{input$market}.csv")
    
    if(!file.exists(filename)) stop(safeError(glue("Data was not found for {input$market}.")))
    
    df <- read.csv(filename)
    df$Month <- as.Date(df$Month, "%m/%d/%Y")
    df
  })
  
  output$ui_variable <- renderUI({
    
    selectInput("variable", "Variable", choices = names(df())[-1], multiple = TRUE, selected = names(df())[-1])
    
  })
  
  output$tsplot1 <- renderPlot({

    req(input$variable)

    validate(need(input$variable[1] %in% names(df()), message = ""))
    
    matplot(df()$Month, df()[,input$variable], "l", xlim = input$dates)
    
  })
  
  output$table1 <- renderDataTable({
    
    validate(need(input$variable[1] %in% names(df()), message = ""))
    
    df()[df()$Month >= input$dates[1] & df()$Month <= input$dates[2], input$variable]
    
  })
  
}