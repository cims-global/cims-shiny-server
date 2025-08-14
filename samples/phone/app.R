library(shiny)

ui <- fluidPage(
  titlePanel("World Telephones"),
  selectInput("region", "Region:", 
              choices = colnames(WorldPhones)),
  plotOutput("phonePlot")
)

server <- function(input, output) {
  output$phonePlot <- renderPlot({
    barplot(WorldPhones[,input$region]*1000, 
            ylab = "Number of Telephones", xlab = "Year")
  })
}

shinyApp(ui = ui, server = server)

# library(shiny)
# shinyApp(ui = fluidPage("Hello"), server = \(input, output) {})