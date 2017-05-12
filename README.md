# xgb.python.vs.r

the xgboost in python or r is different<br>

for example:<br>
we train iris by xgb.cv in R <br> 
<br>
[2]     train-merror:0.056667+0.028674  test-merror:0.040000+0.028284 <br>
[3]     train-merror:0.040000+0.016330  test-merror:0.046667+0.024944 <br>
Stopping. Best iteration:<br>
[2]     train-merror:0.056667+0.028674  test-merror:0.040000+0.028284<br>
<br>
and train iris by xgb.cv in Python <br>
<br>
   train-merror-mean  test-merror-mean<br>
0           0.046667          0.046667<br>
<br><br>
the params of r and python are same <br>
xgb_params=list( 	
  objective="multi:softmax",
  eta= 0.01, 
  max_depth= 1, 
  colsample_bytree= 0.7,
  subsample = 0.7,
  num_class = 3)
<br><br>
results are different, if we use other data, that will more different, but we don't know why
<br><br><br>


================================================<br>
PS:<br>
R version 3.4.0 (2017-04-21)<br>
Platform: x86_64-w64-mingw32/x64 (64-bit)<br>
Running under: Windows 10 x64 (build 15063)<br>
<br>
Matrix products: default<br>
<br>
locale:<br>
[1] LC_COLLATE=Chinese (Traditional)_Taiwan.950 <br>
[2] LC_CTYPE=Chinese (Traditional)_Taiwan.950   <br>
[3] LC_MONETARY=Chinese (Traditional)_Taiwan.950<br>
[4] LC_NUMERIC=C                                <br>
[5] LC_TIME=Chinese (Traditional)_Taiwan.950    <br>
<br>
attached base packages:<br>
[1] stats     graphics  grDevices utils     datasets  methods   base     <br>
<br>
other attached packages:<br>
[1] dplyr_0.5.0       data.table_1.10.4 xgboost_0.6-4    <br>
<br>
loaded via a namespace (and not attached):<br>
 [1] compiler_3.4.0   R6_2.2.0         assertthat_0.2.0 magrittr_1.5    <br>
 [5] Matrix_1.2-9     DBI_0.6-1        tools_3.4.0      tibble_1.3.0    <br>
 [9] Rcpp_0.12.10     stringi_1.1.5    grid_3.4.0       lattice_0.20-35 <br>

<br><br><br>
python<br>
xgb.__version__
Out[107]: '0.6'







