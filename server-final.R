library(shiny)
library(acs)
library(choroplethr)

shinyServer(function(input, output) {

  output$stateMap = renderPlot({
    # add a progress bar
    progress = shiny::Progress$new()
    on.exit(progress$close())
    progress$set(message = "Creating image. Please wait.", value = 0)
    
    year                         = as.numeric(input$year)
    df_state_demographics        = get_state_demographics(year, 5)
    df_state_demographics$value  = df_state_demographics[, input$demographic]
    state_choropleth(df_state_demographics, num_colors = input$num_colors)
  })
  
  output$countyMap = renderPlot({
    # add a progress bar
    progress = shiny::Progress$new()
    on.exit(progress$close())
    progress$set(message = "Creating image. Please wait.", value = 0)
    
    year                          = as.numeric(input$year)
    df_county_demographics        = get_county_demographics(year, 5)
    df_county_demographics$value  = df_county_demographics[, input$demographic]
    county_choropleth(df_county_demographics, num_colors = input$num_colors)
  })
  

})
