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
        p(paste(
            'Because of social stigma mental disorders',
            'are usually the ones that receive less attention.',
            'Even across European countries with similar development',
            'the amount of expenditure in this branch of public health',
            'varies a lot. Here is a comparison between psychiatric',
            'beds and total hospital beds in different European countries.')),
        plotOutput('myChart'),
        textOutput('stats')
    )
))

