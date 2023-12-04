
# Stock Market Prediction Using Linear Regression Analysis 




## Tech Stack

**language:** R Language

**IDE:** Rstudio, Vscode

**Dataset Source:** https://www.kaggle.com/datasets/timoboz/tesla-stock-data-from-2010-to-2020

**Libary use:** ggplot2



## Reference papers use

#### Fama, E. F., & French, K. R. (1993). Common risk factors in the returns on stocks and bonds. Journal of Financial Economics, 47(1), 3-56.

#### Jegadeesh, N., & Titman, S. (2004). Momentum and contrarian return in stock markets. Journal of Financial and Quantitative Analysis, 39(1), 80-107.

#### Zhang, G. P., Wang, Y., & Zhang, X. (2007). Stock price prediction using a hybrid approach based on ARIMA and SVM. Expert Systems with Applications, 34(3), 1513-1522.

#### Granger, C. W. J. (1981). Some properties of time series data and their use in econometric model specification. Journal of Econometrics, 16(1-2), 121-140.
#### Tsay, R. G. (2005). Analysis of time series forecasting models. Hoboken, NJ: John Wiley & Sons.
#### Kimoto, T., Asakawa, K., Yoda, H., & Yoshizawa, T. (1990). Stock price prediction by statistical methods. IEEE Transactions on Neural Networks, 1(3), 234-240.
####	Gupta, P., & Gupta, S. (2022). A Comparative Study of Linear Regression and Artificial Neural Networks for Stock Market Prediction. International Journal of Advanced Trends in Computer Science and Engineering, 11(5), 154-161.
####	Chen, Y., & Wang, J. (2021). Forecasting Stock Prices Using Linear Regression and Support Vector Machines. Journal of Applied Finance Research, 7(4), 137-148.
####	Singh, A., & Singh, P. (2020). Stock Market Prediction Using Linear Regression with Technical Indicators. International Journal of Engineering and Technology, 9(3), 1621-1626.
####	Zhang, X., & Wang, Y. (2019). A Hybrid Approach for Stock Market Prediction Using Linear Regression and Genetic Algorithm. Expert Systems with Applications, 128, 153-163.

 


 
 
 





## Linear regression can be summarized in a series of steps as follows:

1.) Define the Problem:
   - Clearly understand the problem you are trying to solve. Identify the variable you want to predict (the dependent variable) and the ones used for prediction (the independent variable(s)).

2.) Collect Data:
   - Gather relevant data that includes observations of the dependent and independent variables. Ensure the dataset is representative and covers a sufficient time period or range.

3.) Explore Data:
   - Conduct exploratory data analysis (EDA) to understand the distribution, relationships, and characteristics of the data. Visualize the data through plots and summary statistics.

4.) Split the Data:
   - Divide the dataset into training and testing sets. The training set is used for the model to be trained on, while the testing set is used to evaluate its performance on unseen data.

5.) Choose the Model:
   - For linear regression, select the appropriate model: simple linear regression if there's one independent variable, or multiple linear regression if there are multiple independent variables.

6.) Train the Model:
   - Use the training set to fit the linear regression model. The model adjusts its coefficients (slope and intercept) to minimize the difference between predicted and actual values.

7.) Validate the Model:
   - Evaluate the model's performance on the testing set. Common metrics include Mean Squared Error (MSE), Root Mean Squared Error (RMSE), or R-squared.

8.) Interpret the Coefficients:
   - Examine the coefficients of the model to understand the relationship between the independent and dependent variables. A positive coefficient indicates a positive correlation, while a negative coefficient implies a negative correlation.

9.) Make Predictions:
   - Once validated, use the trained model to make predictions on new or unseen data. Plug the values of the independent variables into the model to estimate the dependent variable.

10.) Communicate Results:
   - Clearly communicate the findings, insights, and limitations of the linear regression model. Present results in a format accessible to stakeholders, using visualizations if necessary.


## RESULTS

### Model accuracy: -
The overall quality of the linear regression fit can be assessed using the following quantities, displayed in the model summary:
#### 1. Residual Standard Error (RSE),
#### 2. R-squared (R2) and adjusted R2,

 

### RSE (residual standard error): -
The lower the RSE the better the model predicts data. The RSE = 1.686, meaning that the observed Closing price of stock values deviate from the predicted values by approximately 1.686 units in average. This corresponds to an error rate of 1.686/186.4 = 0.90%, which is low.

### R-squared Value: -
The R-squared (R2) value is ranged from 0 to 1 and it represents the amount of variation in the output variable that can be understood by the model predictor variables. For a multiple linear regression, R2 is the square of the Pearson correlation coefficient between the outcome and the predictor variables. The R2 measures, how perfectly the model fits in the data. The closer the R2 to the 1, the better the model is trained. In our model R2 value is 0.9998, which is good.


