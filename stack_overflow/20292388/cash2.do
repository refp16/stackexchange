clear all
set more off

* Create example data
set seed 8642
set obs 40

egen year = seq(), from(1985) to (2005) block(4)
gen cash = floor(runiform()*500)
gen flag = round(runiform())
list, sepby(year)

* Define labels
label define lflag 0 "cash0" 1 "cash1"
label values flag lflag

* Table
table flag year, contents(mean cash)







egen mcash = mean(cash), by(flag year)

table mcash year, by(flag)

* Data management
gen cash0 = cash if flag == 0
gen cash1 = cash if flag == 1
list, sepby(year)

* Tables
estpost tabstat cash*, stat(mean) by(year)
esttab, cells("cash0 cash1")
