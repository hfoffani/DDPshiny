library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("DDP Project"),
    sidebarPanel(
        radioButtons("chart", "Chart type:",
                     c("Relation" = "rel",
                       "Psyc vs. Hospital" = "points",
                       "Psychiatric beds" = "psyc",
                       "Hosptial beds" = "hosp"))
    ),
    mainPanel(
        plotOutput('myChart')
    )
))

