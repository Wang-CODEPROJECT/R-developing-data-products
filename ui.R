#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diamond price prediction"),
  
  # Sidebar with options selectors 
  sidebarLayout(
    sidebarPanel(
        helpText("This application predicts the price of a diamond(Made by Wang)."),
        h3(helpText("Select:")),
       numericInput("car", label = h4("Weight per Carats"), step = 0.01, value = 2),
       selectInput("cut", label = h4("Cutting degree"), 
                   choices = list("Unknown" = "*", "Fair" = "Fair", "Good" = "^Good",
                                  "Very Good" = "Very Good", "Premium" = "Premium",
                                  "Ideal" = "Ideal")),
       selectInput("col", label = h4("Color of the diamond"), 
                   choices = list("Unknown" = "*", "D" = "D", "E" = "E",
                                  "F" = "F", "G" ="G",
                                  "H" = "H", "I" = "I",
                                  "J" = "J")),
       selectInput("clar", label = h4("Clarity of the diamond"), 
                   choices = list("Unknown" = "*", "I1" = "I1", "SI2" = "SI2",
                                  "SI1" = "SI1", "VS2" = "VS2", "VS1" = "VS1",
                                  "VVS2" = "VVS2", "VVS1" = "VVS1", "IF" = "IF" ))
    ),
    
    # Show a plot with diamonds and regression line
    mainPanel(
       plotOutput("distPlot"),
       h4("Predicted value is:"),
       h3(textOutput("result"))
    )
  )
))
