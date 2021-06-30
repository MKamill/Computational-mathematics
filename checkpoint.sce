clc

//function [y]=f(x)
//    y = x^2-2*x-9
//    disp(x,y)
//endfunction
//
//
////x=0:10
//f(4.1428571)
//x=poly(0,'x')
//p=3.5*(((x-4)*(x-6))/((2-4)*(2-6)))
//
//pp=6*(((x-2)*(x-6))/((4-2)*(4-6)))
//ppp=10*(((x-2)*(x-4))/((6-2)*(6-4)))
//wef=p+pp+ppp
//disp(wef)

// 2.5 +0.125x +0.1875x²
 
 function [y]=lx(x)
    y = 2.5+0.125*x+0.1875*x^2
    disp(x,y)
endfunction
x=2:0.1:6
plot(x,lx(x),'black')
plot(2.2,lx(2.2),'r*')
//lx(2.2)
