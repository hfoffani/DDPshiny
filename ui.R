library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Psychiatric beds vs. Total Hospital beds'),
    sidebarPanel(
        radioButtons("chart", label = h5("Plots"), c(
                "Psychiatric beds per Country" = "psyc",
                "Total Hospital beds per Country" = "hosp",
                "Percentage of Psyc to Hospital beds per Country" = "rel",
                "Psychiatric beds vs. Harm beds" = "points")        
        ),
        sliderInput("probs", label = h5("Quantiles"), min = 0, 
                    max = 100, value = c(25, 75))
    ),
    mainPanel(
        p(paste(
            'Because of social stigma mental disorders',
            'are usually the ones that receive less attention.',
            'Even across European countries with similar development',
            'the amount of expenditure in this branch of public health',
            'varies a lot. Here is a comparison between psychiatric',
            'beds and total hospital beds in different European (EU28)',
            'countries.')),
        plotOutput('myChart'),
        textOutput('stats')
    )
))

