library(shiny)

data(mtcars)
model<-lm(mpg ~ cyl + wt, data=mtcars)

shinyServer(
     function(input, output) { 
          output$mpg <- renderText({
               predict(model, data.frame(cyl=as.numeric(input$cyl), 
                                         wt=as.numeric(input$weight)))
               })
     }
)