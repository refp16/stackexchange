clear
set more off

webuse union

capture noisely {

xtlogit union age grade i.not_smsa south##c.year, fe iter(2)

xtlogit union age grade i.not_smsa south##c.year, pa iter(3)

}
