clear all
set more off

timer clear
local numloops 20
local numdate 5000
*--------------------------------

timer on 1
forvalues i = 1/`numloops' {
    forvalues j = 1/`numdate' {
        quietly {
            di date("01-12-2012","DMY")
            di date("01-12-2012","DMY")
	    }
    }
}
timer off 1

*--------------------------------

timer on 2
forvalues i = 1/`numloops' {
    forvalues j = 1/`numdate' {
        quietly {
            di date("01-12-2012","DMY")
	    }
    }
}
timer off 2

*--------------------------------

timer list
