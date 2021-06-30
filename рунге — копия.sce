clc
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
function w = f(x, y)
    w = x+0.3*y^2
endfunction

x0=0
y0=0.3
h=0.2
x=0:h:0.8

z=ode(y0, x0, x, f)
disp([x; z])
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
disp('-------------------------------------')
//--------------МОЕ-РЕШЕНИЕ--------------
//x0=0 - y_x0=0.3
//x1=0.2 - y_x1=0.3171896
//x2=0.4 - y_x2=0.3620617
//x3=0.6 - y_x3=0.4356590
//x4=0.8 - y_x4=0.5395359
//h=0.2

function n = f_x0_y_x0(x0, y_x0)
    n = x0+0.3*y_x0^2
endfunction

function n = y_x_iPlus1(x0, y_x0, h, f_x0_y_x0)
    k10 = h* f_x0_y_x0(x0, y_x0)
    k20 = h* f_x0_y_x0(x0+(h/2), y_x0+(k10/2))
    k30 = h* f_x0_y_x0(x0+(h/2), y_x0+(k20/2))
    k40 = h* f_x0_y_x0(x0+h, y_x0+k30)
    n = y_x0 + (k10+k20+k30+k40)/6
endfunction

disp(y_x_iPlus1(0.6, 0.4356590, 0.2, f_x0_y_x0))

//--------------МОЕ-РЕШЕНИЕ--------------
