clear all
set more off

set seed 8642
set obs 40

* Create toy data
egen year = seq(), from(1985) to (2005) block(4)
gen cash = floor(runiform()*500)
gen flag = round(runiform())
*bysort year (flag): replace flag = flag[_N]
list, sepby(year)

* Data management
gen cash0 = cash if flag == 0
gen cash1 = cash if flag == 1
list, sepby(year)

* Tables
estpost tabstat cash*, stat(mean) by(year)
esttab, cells("cash0 cash1")


