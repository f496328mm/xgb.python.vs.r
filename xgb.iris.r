

library(xgboost)
library(data.table)
library(dplyr)

data(iris)
iris = data.table(iris)
iris_x = subset(iris,select = -c(Species)) %>%  as.matrix
iris_y = iris$Species %>% as.numeric-1

dtrain <- xgb.DMatrix(data=iris_x, label=iris_y)

xgb_params=list( 	
  objective="multi:softmax",
  eta= 0.01, 
  max_depth= 1, 
  colsample_bytree= 0.7,
  subsample = 0.7,
  num_class = 3)

set.seed(100)
xgb_cv <- xgb.cv(data = dtrain,
                 params = xgb_params,
                 nrounds = 3000,
                 maximize = FALSE,
                 prediction = TRUE,
                 nfold = 3,
                 print_every_n = 1,
                 early_stopping_rounds = 1
                 ,nthread=8
)
xgb_cv$evaluation_log[,c(1,2,4),with=F]


