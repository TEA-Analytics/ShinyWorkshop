## =========================================
##  Demo 1-04
##   < Server >
## =========================================

server <- function(input, output) { 
  
  df <- reactive({
    df <- read.csv(glue("../../../Data/HistSpotMonthlyAve_{input$market}.csv"))
    df$Month <- as.Date(df$Month, "%m/%d/%Y")
    # print("read.csv")
    df
  })
  
  # df <- function(){
  #   df <- read.csv(glue("../../../Data/HistSpotMonthlyAve_{input$market}.csv"))  
  #   df$Month <- as.Date(df$Month, "%m/%d/%Y")
  #   print("read.csv")
  #   df
  # }
  
  output$tsplot1 <- renderPlot({
    
    matplot(df()$Month, df()[,-1], "l", xlim = input$dates)
    
  })
  
  output$table1 <- renderDataTable({
    
    df()[df()$Month >= input$dates[1] & df()$Month <= input$dates[2],]
    
  })
  
}