clear all
set more off

insheet using "D:\Datos\rferrer\Desktop\xlsdates.csv", delimiter(";")

* Rename variables
foreach var of varlist * {
	local j = "`: variable l `var''"
	local newname = strtoname("`j'", 1)
	rename `var' `newname'
}

* Generate ID
generate id = _n

list

* Change to long format
reshape long _, i(id) j(dat) string

* Sensible name
rename _ metric

* 
gen dat2 = date(dat,"DMY", 2050)
format dat2 %d

list, sepby(id)

*import excel "D:\Datos\rferrer\Desktop\xlsdates.xlsx", sheet("Hoja1") firstrow
