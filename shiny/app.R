# library(shiny)
library(DT)


data <- readRDS("general_patient_info.rds")

ui <- basicPage(
  h2("The mtcars data"),
  dataTableOutput("mytable")
)

server <- function(input, output) {
  output$mytable = renderDataTable({
  data
  })
}

shinyApp(ui, server)