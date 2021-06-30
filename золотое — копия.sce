clc
disp('!!! МЕТОД ДИХОТОМИИ !!!')
disp('-------------------------------------')
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
function y=gg(x)
    y=x^2+7*%e^(0.35*x) //исходная функция
endfunction

function [f,g,r]=z(x,r)
    f=gg(x)
    g=numderivative(gg,x)
endfunction

x0=-1; //начальное приближение

[fmin,xmin]=optim(z,x0)
disp([fmin,xmin])
//--------------РЕШЕНИЕ-ОТ-ЕР--------------

disp('-------------------------------------')

//--------------МОЕ-РЕШЕНИЕ--------------
function n = f(x)
    n = x^2+7*%e^(0.35*x) //исходная функция
endfunction

a=-0.948125 // левый конец
b=-0.86625 // правый конец
x0=(a+b)/2 //середина [a, b]
delta = 0.01
E = 0.05
x1=x0-delta
x2=x0+delta

////----для графика---
//h=0.01
//x=a:h:b
//plot(x,f(x),'red')
////----для графика---

function n = compare(a, b, x1, x2, f)
    fx1 = f(x1)
    fx2 = f(x2)
    if fx2 >= fx1 then
     disp('fx2= '+string(fx2)+' >= '+string(fx1)+' =fx1')
     n = 'новый отрезок [a=' + string(a) + ',b=' + string(x2) + ']!'
    else
     disp('fx1='+string(fx1)+'>'+string(fx2)+'=fx2')
     n = 'новый отрезок [a=' + string(x1) + ',b=' + string(b) + ']!'
    end
    if (abs(b-a)/2) < E then
     disp('e='+string(abs(b-a)/2)+' -> останавливаемся')
    else
     disp('e='+string(abs(b-a)/2)+' -> нужна еще итерация')
    end
    disp('середина='+string(x0))
    disp('f(cередина)='+string(f(x0)))
endfunction


disp(compare(a, b, x1, x2, f))
//--------------МОЕ-РЕШЕНИЕ--------------

