clc
disp('!!! МЕТОД ЗОЛОТОГО СЕЧЕНИЯ !!!')
//disp('-------------------------------------')
//--------------РЕШЕНИЕ-ОТ-ЕР--------------
function y=gg(x)
    y=2*x^2+x-3 //исходная функция
endfunction

function [f,g,r]=z(x,r)
    f=gg(x)
    g=numderivative(gg,x)
endfunction

x0=-1; //начальное приближение

[fmin,xmin]=optim(z,x0)
disp([fmin,xmin])
//--------------РЕШЕНИЕ-ОТ-ЕР--------------

//disp('-------------------------------------')

//--------------МОЕ-РЕШЕНИЕ--------------
function n = f(x)
    n = 2*x^2+x-3
//    n = x^2+10*%e^(0.95*x) //исходная функция
endfunction

a=-1 // левый конец
b=0.236 // правый конец

E = 0.1
////https: //math.semestr.ru/optim/golden.php
x1=a+(1-0.618)*(b-a) //лямбда
x2=a+0.618*(b-a) //мю 

////----для графика---
//h=0.01
//x=a:h:b
//plot(x,f(x),'red')
////----для графика---

function n = compare(a, b, x1, x2, f)
    fx1 = f(x1)
    fx2 = f(x2)
    disp('a='+string(a))
    disp('b='+string(b))
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
    disp('x1='+string(x1))
    disp('x2='+string(x2))
    disp('середина='+string(((b+a)/2)))
    disp('f(cередина)='+string(f(((b+a)/2))))
endfunction


disp(compare(a, b, x1, x2, f))
//--------------МОЕ-РЕШЕНИЕ--------------

