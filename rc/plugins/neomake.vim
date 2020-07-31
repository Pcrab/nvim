" neomake
" check if run on battery
" function! MyOnBattery()
"   if has('macunix')
"     return match(system('pmset -g batt'), "Now drawing from 'Battery Power'") != -1
"   elseif has('unix')
"     return readfile('/sys/class/power_supply/hidpp_battery_0/online') == ['0']
"   endif
"   return 0
" endfunction
" if MyOnBattery()
"   call neomake#configure#automake('w')
" else
"   call neomake#configure#automake('nrwi')
" endif
call neomake#configure#automake('nrwi')
let g:neomake_open_list = 2

