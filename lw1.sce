clc
x_=0:0.01:2

function y = f(x)
   y=0.8*x^3-2*x^2+x-2
endfunction
format('v',7)
function [x1, x2, fx1, fx2, fser] = s(a,b,f)
   x1=(a+b)/2-0.01
   x2=(a+b)/2+0.01
   fx1=f(x1)
   fx2=f(x2)
   fser = f((a+b)/2)
   disp((b-a)/2)
   disp((a+b)/2)
   if fx1 <= fx2 then
    disp('fx2 больше либо равно')
    end
   if fx1 > fx2 then
    disp('fx1 больше')
    end
endfunction

plot(x_, f, 'black')

function y=gg(x)

y=0.8*x^3-2*x^2+x-2;

endfunction

function [f,g,r]=z(x,r)

f=gg(x)

g=numderivative(gg,x)

endfunction

x0=1.5;
format('v',20)
[fmin,xmin]=optim(z,x0)
disp([fmin,xmin])
