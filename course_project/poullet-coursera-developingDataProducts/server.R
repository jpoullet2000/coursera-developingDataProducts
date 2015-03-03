library(dplyr)
library(ggplot2)
library(GGally)
data(mtcars)

shinyServer(
  function(input, output, session) {
    output$predictors <- renderUI(
      selectInput("predictors", "Select the predictors", choices = names(mtcars)[names(mtcars) != 'mpg'], multiple = TRUE)
    )
    
    getData <- reactive({
      data <- mtcars[,c('mpg',input$predictors),drop=FALSE]
    })
    
    getModelText <- reactive({
      if (ncol(getData()) > 1) paste("mpg ~ ", paste(input$predictors,collapse="+"))
    })
    getFormula <- reactive({
      if (ncol(getData()) > 1) formula(getModelText())
    })
    
    output$modelText <- renderText({
      if (ncol(getData()) > 1) getModelText()
    })
        
    output$scatterPlot <- renderPlot({
      if (ncol(getData()) > 1) ggpairs(getData())
    })
        
    output$summaryFit <- renderPlot({
      if (ncol(getData()) > 1){ 
        fit <- lm(formula=getFormula(), data=mtcars)
        plot(fit)
        }
      })
    
  }
)
