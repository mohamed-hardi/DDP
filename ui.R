# This is a very simple app UI to calculate your BMI. 

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Calculating Your BODY MASS INDEX"),
  sidebarPanel(
    h5("Your BMI is a measure of body fat based on your height and weight, it is useful indication if you are fit or obese"),
    selectInput("sex", "select your gender", 
                choices = c("Female" = "Female", "Male" = "Male") ,selected = "Female"),
    numericInput("height", "input your height(cm)", value=168),
    numericInput("weight", "input your weight(kg)", value=58),
    submitButton("Submit")
  ),
  mainPanel(
    h3("Your Data:"),
    p("Sex:"),
    verbatimTextOutput("osex"),
    p("Height:"),
    verbatimTextOutput("oheight"),
    p("Weight:"),
    verbatimTextOutput("oweight"),
    h4("Testing result, you are:"),
    verbatimTextOutput("diagnostic")
  )
))