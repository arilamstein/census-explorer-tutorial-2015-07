library(shiny)
library(choroplethrMaps)

data(df_state_demographics, package="choroplethr")
demographic_choices = colnames(df_state_demographics)[2:ncol(df_state_demographics)]

shinyUI(fluidPage(

  titlePanel("Simple Census Explorer"),
  div(HTML("By <a href='http://www.arilamstein.com'>Ari Lamstein</a>. Source code <a href='https://github.com/arilamstein/shiny-statistical-maps'>here</a>.")),

  sidebarLayout(
    sidebarPanel(
      selectInput("demographic",
                  label = "Select demographic",
                  choices = demographic_choices,
                  selected = "total_population"),
      
      selectInput(inputId  = "year", 
                  label    = "Year",
                  choices  = 2010:2013,
                  selected = 2013),
      
      sliderInput(inputId = "num_colors",
                  label   = "Select number of colors",
                  min     = 1,
                  max     = 9,
                  value   = 7)),

    mainPanel(
      plotOutput("stateMap"),
      plotOutput("countyMap")
    )
  )
))
