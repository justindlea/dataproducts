library(shiny)

shinyUI(pageWithSidebar(
     headerPanel("Predict MPG based on the vehicle's number of cylinders and weight (in tons)"),
     sidebarPanel(
          radioButtons("cyl", "Select Number of Cylinders", 
                       c(4,6,8),selected=4),
          textInput("weight", "Enter Weight (in Tons)", value="3.21725"),
          submitButton('Submit')
     ),
     mainPanel(
          h3('Projected MPG:'),
          textOutput('mpg')
     )
))