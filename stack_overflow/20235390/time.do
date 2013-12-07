clear all
set more off

timer clear

*--------------------------------
timer on 1
forvalues y = 1982/2012 {
    forvalues m = 1/100000 {

    di date("01-`m'-`y'","DMY")
    di date("01-`m'-`y'","DMY")
	*count if start_dt <= date("01-`m'-`y'","DMY") & date("01-`m'-`y'","DMY") <= end_dt

    }
}
timer off 1

*--------------------------------

timer on 2
forvalues y = 1982/2012 {
    forvalues m = 1/100000 {

    di date("01-`m'-`y'","DMY")
    *display date("01-`m'-`y'","DMY")
	*count if start_dt <= date("01-`m'-`y'","DMY") & date("01-`m'-`y'","DMY") <= end_dt

    }
}
timer off 2

*--------------------------------

timer list
