## =========================================
## Demo 1-07
##  < Server >
## =========================================

server <- function(input, output) { 
  
  # Set up reactive values
  counter <- reactiveValues(countervalue = 0)
  
  observeEvent(input$add1, {
    counter$countervalue <- counter$countervalue + 1     # if the add button is clicked, increment the value by 1 and update it
  })
  
  observeEvent(input$sub1, {
    counter$countervalue <- counter$countervalue - 1  # if the sub button is clicked, decrement the value by 1 and update it
  })
  
  observeEvent(input$reset, {
    counter$countervalue <- 0                     # if the reset button is clicked, set the counter value to zero
  })
  
  output$count <- renderText({
    paste("Counter Value is ", counter$countervalue)   # print the latest value stored in the reactiveValues object
  })
  
}