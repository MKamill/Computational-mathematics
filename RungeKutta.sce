//clc
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
//function w = f(x, y)
//    w = y/x
//endfunction
//
//x0=3.1
//y0=3.9
//h=0.2
//x=3.1:h:3.7
//
//z=ode(y0, x0, x, f)
//disp([x; z])
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
//disp('-------------------------------------')
//--------------МОЕ-РЕШЕНИЕ--------------
//x0=0 - y_x0=0.3
//x1=0.2 - y_x1=0.3171896
//x2=0.4 - y_x2=0.3620617
//x3=0.6 - y_x3=0.4356590
//x4=0.8 - y_x4=0.5395359
//h=0.2

function n = f_x0_y_x0(x0, y_x0)
    n = y_x0/x0
endfunction

function n = y_x_iPlus1(x0, y_x0, h, f_x0_y_x0, i)
    k10 = f_x0_y_x0(x0, y_x0)
//    disp('k1'+string(i-1)+'='+string( f_x0_y_x0(x0, y_x0)))
    k20 =  f_x0_y_x0(x0+(h/2), y_x0+(k10/2))
//    disp('k2'+string(i-1)+'='+string( f_x0_y_x0(x0+(h/2), y_x0+(k10/2))))
    k30 =  f_x0_y_x0(x0+(h/2), y_x0+(k20/2))
//    disp('k3'+string(i-1)+'='+string( f_x0_y_x0(x0+(h/2), y_x0+(k20/2))))
    k40 =  f_x0_y_x0(x0+h, y_x0+k30)
//    disp('k4'+string(i-1)+'='+string( f_x0_y_x0(x0+h, y_x0+k30)))
    n = y_x0 + 0.2*(k10+2*k20+2*k30+k40)/6
endfunction

function proc()
    i = 3
    x0 = 3.5
    y0 = 4.4725895
    h = 0.2
    disp('i='+string(i)+': y(x'+string(i)+')='+string(y_x_iPlus1(x0, y0, h, f_x0_y_x0, i))+', [x'+string(i-1)+'='+string(x0)+', y'+string(i-1)+'='+string(y0)+'], теперь x'+string(i)+'='+string(x0+h)+', i='+string(i+1))
endfunction

proc()


//--------------МОЕ-РЕШЕНИЕ--------------
