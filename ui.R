library(shiny)
library(markdown)

shinyUI(fluidPage(
    titlePanel('Psychiatric beds in European Hospitals'),
    sidebarLayout( #position = "right",

    sidebarPanel(
        radioButtons("chart", label = h5("Plots"), c(
                "Total Hospital beds per Country" = "hosp",
                "Psychiatric beds per Country" = "psyc",
                "Percentage of Psyc to Hospital beds per Country" = "rel",
                "Psychiatric beds vs. Non-psyc beds" = "points")        
        ),
        sliderInput("probs", label = h5("Quantiles"), min = 0, 
                    max = 100, value = c(25, 75))
    ),
    mainPanel(
    tabsetPanel(
    tabPanel("Home",
        p(paste(
            'According to WHO because of social stigma, mental disorders',
            'are usually the ones that receive less public attention.',
            'Even across European countries with similar development status',
            'the amount of expenditure and treatments in this branch of',
            'public health varies a lot.')),
        p(paste(
            'Here is a comparison between the number of beds in hospitals',
            'for psychiatric care and the total number of beds in hospitals',
            'in different European (EU28) countries.')),
        plotOutput('myChart'),
        textOutput('stats'),
        p(),
        div(
            'Data from Eurostat reproduced without permission.', br(),
            'Data Sources:', a('Hospital beds',
            href='http://ec.europa.eu/eurostat/product?code=tps00046'),
            'and', a('Psychiatric care beds in hospitals',
            href='http://ec.europa.eu/eurostat/product?code=tps00047'), br(),
            'Missing 2011 data from Netherlands, Greece, Denmark & Luxembourg',
            style='font-size:80%')
    ),
    tabPanel("About",
             includeMarkdown("README.md"))
    )
    )
)))

