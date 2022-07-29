




capture log close

log using "bai1", replace

use "cigsales.dta"

describe


tsset state year

// http://www.haghish.com/statistics/stata-blog/stata-programming/download/itsa.html


itsa cigsale, single treat(3) trperiod(1989) lag(1) posttrend figure

arima

//close log

log close