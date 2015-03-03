## Q1
######
library(manipulate)
myPlot <- function(s) {
    plot(cars$dist - mean(cars$dist), cars$speed - mean(cars$speed))
    abline(0, s)
}

manipulate(myPlot(s), s = slider(0, 2, step = 0.1))

## Q2
######
require(devtools)
install_github('rCharts', 'ramnathv')
library(rCharts)
data(airquality)
dTable(airquality, sPaginationType = "full_numbers")

## Q3
######
# A basic shiny data product requires:
# A ui.R and server.R file or a A server.R file and a directory called www containing the relevant html files.

## Q4
######
# library(shiny)
# shinyUI(pageWithSidebar(
#   headerPanel("Data science FTW!"),
#   sidebarPanel(
#     h2('Big text')
#     h3('Sidebar')
#   ),
#   mainPanel(
#     h3('Main Panel text')
#   )
# ))

# is missing a comma in the sidebar panel

## Q5
######
## see ui.R and server.R