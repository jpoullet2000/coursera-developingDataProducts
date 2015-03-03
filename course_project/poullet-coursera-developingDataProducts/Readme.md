This shiny app aims to evaluate a regression model on the *mtcars* data (preliminary evaluation). More specifically, it shows on a scatterplot matrix how the variables (mpg + selected ones) are correlated to each other, and whether a data point distorts the accuracy of the selected model based on the Cook distance (>0.5 medium distortion, >1 large distortion). One can also observe how the data points are distributed around the 0 line (standardized residuals) on the "Residual vs Leverage" plot to assess how well the model fits the data.

## How to use it ?
Just select one or several predictors. To delete them, click in the select field and use the backspace key on your keyboard. The model will be updated automatically as well as the corresponding plots.
