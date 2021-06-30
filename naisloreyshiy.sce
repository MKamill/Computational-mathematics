clc
_h=poly(0,'h')
//
h1=0.2272727272727273
h2=-0.00000000000000002

function n=f(x,y)
    n=x^2+x*y+2*y^2-x+y
endfunction

function n=xn(x,y,_h)
    n=x-_h*(2*x+y-1)
endfunction

function n=yn(x,y,_h)
    n=y-_h*(x+4*y+1)
endfunction

//disp(x)
//disp(y)
//disp(f(x,y))
format('v',20)
disp('--------------')
p1=xn(0.71590909090909105, -0.42045454545454525, 0.22727272727272724)
p2=yn(0.71590909090909105, -0.42045454545454525, 0.22727272727272724)
disp(p1)
disp(p2)
disp(f(p1,p2))
//disp(derivat(f(p1,p2)))
disp(roots(derivat(f(p1,p2))))
