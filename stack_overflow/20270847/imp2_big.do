clear all
set more off
timer clear

insheet using "C:\Documents and Settings\roberto\Escritorio\20270847\xlsdates_big3.csv", delimiter(";")

* Rename variables
foreach var of varlist * {
	local j = "`: variable l `var''"
	local newname = strtoname("`j'", 1)
	rename `var' `newname'
}

* Generate ID
generate id = _n

describe, short

* Change to long format
timer on 1
reshape long _, i(id) j(dat) string
timer off 1
timer list

* Sensible name
rename _ metric

* Generate new date variable
gen dat2 = date(dat,"DMY", 2050)
format dat2 %d

describe, short

