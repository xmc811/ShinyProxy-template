

library(shiny)
library(tidyverse)

ui <- fluidPage(
    
    titlePanel("Correlation of two Numeric Variables"),
    
    sidebarLayout(
        sidebarPanel(
            selectInput("file",
                        "Select file:",
                        list.files("./data/")),
            br(),
            br(),
            br(),
            br(),
            br(),
            br(),
            selectInput("color",
                        "Color of points:",
                        c("black","red","orange","blue","purple","green","yellow"))
        ),
        
        mainPanel(
            plotOutput("scatterPlot")
        )
    )
)

server <- function(input, output) {
    
    output$scatterPlot <- renderPlot({
        
        df <- read_csv(paste0("./data/", input$file))
        
        ggplot(df) + geom_point(aes(x, y), color = input$color)
    })
}

shinyApp(ui = ui, server = server)
