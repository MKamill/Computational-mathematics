//clc
//
//function n =f(x1, x2)
//   n=x1^2+x2^2+x1*x2-8*x1-2*x2
//endfunction
//
//function n =x1kplus1(x1k, x2k, h)
//   n=x1k-h*(2*x1k + x2k - 8)
//endfunction
//
//function n =x2kplus1(x1k, x2k, h)
//   n=x2k-h*(2*x2k + x1k - 2)
//endfunction
//
//function n =grad(x1k, x2k)
//   n=sqrt((2*x1k + x2k - 8)^2+(2*x2k + x1k - 2)^2)
//endfunction
//
//function n =e(x1kplus1, x2kplus1, x1k, x2k, f)
//   n=abs(f(x1kplus1, x2kplus1) - f(x1k, x2k))
//endfunction
//
//disp(f(4.59375,-1.3125))
//disp(x1kplus1(4.625,-1.1875, 0.5))
//disp(x2kplus1(4.625,-1.1875, 0.5))
//disp(grad(4.59375,-1.3125))
//disp(e(4.59375,-1.3125,4.625,-1.1875,f))

////////----------------Для проверки---------СРС------------- 
//function y=ff(x)
//y=x(1)^2+x(2)^2+x(1)*x(2)-8*x(1)-2*x(2);
//endfunction
//[x,y]=fminsearch(ff,[0,0])
//disp([x,y])

////----------------Для проверки---------ЛР9------------- 
//function y=ff(x)
//y=x(1)^2+x(1)*x(2)+2*x(2)^2-x(1)+x(2)
//endfunction
//[x,y]=fminsearch(ff,[1, 1])
//disp([x,y])







