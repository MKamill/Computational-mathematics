//tyyyyclc
//x_=0:0.01:1
//
//function y = f(x)
//   y=0.1*x^4-3.5*x^3+6*x^2-2*x+1
//endfunction
//format('v',7)
//function [x1, x2, fx1, fx2] = s(a, b, f, t)
//   x1=a+(1-t)*(b-a)
//   x2=a+t*(b-a)
//   fx1=f(x1)
//   fx2=f(x2)
//   disp((a+b)/2)
//   disp(f((a+b)/2))
//   disp((b-a)/2)
//   if fx1 <= fx2 then
//    disp('fx2 больше либо равно')
//    end
//   if fx1 > fx2 then
//    disp('fx1 больше')
//    end
//endfunction
//
////disp(f(1))
//[x1, x2, fx1, fx2]=s(0.1459,0.3819, f, 0.618)
//disp([x1,x2, fx1, fx2 ])
//6
////plot(-0.01, f, 'g*')
////plot(0.01, f, 'r*')
//plot(x_, f, 'black')
clc

//function y=gg(x)
//
//y=0.1*x^4-3.5*x^3+6*x^2-2*x+1
//
//endfunction
//
//function [f,g,r]=z(x,r)
//
//f=gg(x)
//
//g=numderivative(gg,x)
//
//endfunction
//
//x0=0.2;
//format('v',20)
//[fmin,xmin]=optim(z,x0)
//disp([fmin,xmin])


function n=gg(x, y)

   n=x^2+x*y+2*y^2-x+y

endfunction

h= poly(0,'h')
x= 0.46623+0.94214*h
y= -0.8746-2.03217*h

disp(roots(gg(x,y)))


