#
shinyUI(pageWithSidebar(
  headerPanel("Fitting a linear regression model"),
  sidebarPanel(
    helpText("Find out"), 
    helpText(" - how correlated are the variables (>0.8: strong, >0.9: very strong), and"),
    helpText(" - whether a data point distorts the accuracy of the selected model based on the Cook distance (>0.5 medium distortion, >1 large distortion)"),
    wellPanel(
    uiOutput("predictors"),
    helpText("The selected model is "),
    textOutput("modelText")
  )),
  mainPanel(
    plotOutput('scatterPlot'),
    plotOutput('summaryFit')
  )
))
