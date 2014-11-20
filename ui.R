library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("DDP Project"),
    sidebarPanel(
        radioButtons("chart", "Plots:", c(
                "Psychiatric beds per Country" = "psyc",
                "Total Hospital beds per Country" = "hosp",
                "Percentage of Psyc to Hospital beds per Country" = "rel",
                "Psyc vs. Total Hospital beds" = "points")        
        )
    ),
    mainPanel(
        plotOutput('myChart')
    )
))

