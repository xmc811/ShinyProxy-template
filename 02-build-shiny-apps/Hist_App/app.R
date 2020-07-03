

library(shiny)
library(tidyverse)

ui <- fluidPage(

    titlePanel("Distribution of a Numeric Vector"),

    sidebarLayout(
        sidebarPanel(
            selectInput("file",
                        "Select file:",
                        list.files("./data/")),
            br(),
            br(),
            br(),
            br(),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        mainPanel(
           plotOutput("distPlot")
        )
    )
)

server <- function(input, output) {

    output$distPlot <- renderPlot({

        x <- read_tsv(paste0("./data/", input$file), col_names = F)[[1]]

        hist(x, input$bins)
    })
}

shinyApp(ui = ui, server = server)
