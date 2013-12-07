clear all
set more off

insheet using "D:\Datos\rferrer\Desktop\xlsdates.csv", delimiter(";")

list

* Rename variables
foreach var of varlist * {
	local j = "`: variable l `var''"
	local newname = strtoname("`j'", 1)
	rename `var' `newname'
}


*import excel "D:\Datos\rferrer\Desktop\xlsdates.xlsx", sheet("Hoja1") firstrow
