library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Psychiatric beds vs. Total Hospital beds'),
    sidebarPanel(
        radioButtons("chart", "Plots:", c(
                "Psychiatric beds per Country" = "psyc",
                "Total Hospital beds per Country" = "hosp",
                "Percentage of Psyc to Hospital beds per Country" = "rel",
                "Psychiatric beds vs. Harm beds" = "points")        
        )
    ),
    mainPanel(
        plotOutput('myChart')
    )
))

