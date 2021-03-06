#'Compute Precision Analyses for Correlations
#'This approach simply loops a function from MBESS
#'@param r Correlation
#'@param nlow starting sample size
#'@param nhigh ending sample size
#'@param by Incremental increase in sample (e.g. nlow = 10, nhigh = 24, by = 2, produces estimates of 10, 12, and 14)
#'@param ci Type of Confidence Interval (e.g., .95)
#'@return Precision Analyses for Correlations
#'@export
#'

r_prec<-function(r,nlow, nhigh, ci=.95, by=1)
{
  for(n in seq(nlow,nhigh, by)){
  a<-MBESS::ci.cc(r, n, ci)
  ll<-a[1]
  ul<-a[3]
  ll<-round(as.numeric(ll),4)
  ul<-round(as.numeric(ul),4)
  print(paste("n=",n,"r = ",r,",LL = ",ll,",UL = ",ul,",precision = ",ul-ll ))}}

