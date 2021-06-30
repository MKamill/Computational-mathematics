//clc
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
function w = f(x, y)
    w = (y)/x^2
endfunction

x0=2
y0=1
h=0.2
x=2:h:2.2

z=ode(y0, x0, x, f)
disp([x; z])
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
//disp('-------------------------------------')
//--------------МОЕ-РЕШЕНИЕ--------------
//x0=0 - y_x0=0.3
//x1=0.2 - y_x1=0.3054
//x2=0.4 - y_x2=0.3509961
//x3=0.6 - y_x3=0.4383880
//x4=0.8 - y_x4=0.5699190
//h=0.2

function n = f_x0_y_x0(x0, y_x0)
    n = (y_x0)/x0^2
endfunction

function n = y_x_iPlus1(x0, y_x0, h, f_x0_y_x0)
    n = y_x0 + h*f_x0_y_x0(x0, y_x0)
endfunction

function proc()
    i = 1
    x0 = 2
    y0 = 1
    h = 0.2
    disp('i='+string(i)+': y(x'+string(i)+')='+string(y_x_iPlus1(x0, y0, h, f_x0_y_x0))+', [x'+string(i-1)+'='+string(x0)+', y'+string(i-1)+'='+string(y0)+'], теперь x'+string(i)+'='+string(x0+h)+', i='+string(i+1))
endfunction

proc()

//--------------МОЕ-РЕШЕНИЕ--------------
