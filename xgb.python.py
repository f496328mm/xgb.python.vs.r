# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import xgboost as xgb
import pandas
import numpy
from sklearn import datasets

iris = datasets.load_iris()

x = iris.data[:,:4]
y = iris.target

dtrain = xgb.DMatrix(x,y)

xgb_params={
        'eta':0.01,
        'max_depth':1,
        'subsample':0.7,
        'colsample_bytree':0.7,
        'objective':'multi:softmax',
        'num_class':3,
        'nfold':3
        }

cv_output = xgb.cv(xgb_params,
                   dtrain,
                   num_boost_round=1000,
                   early_stopping_rounds=5,
                   verbose_eval=5,
                   show_stdv=False)

cv_output[['train-merror-mean','test-merror-mean']]

















