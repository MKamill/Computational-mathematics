clc

function [ySh]=fxy(x0,y0)
   ySh=y0/x0
endfunction

function [ySh]=fxh2y(x0,y0,fxy)
   h=0.2
   x0=x0+h/2
   y0=y0+(  0.2516114)
   ySh=fxy(x0,y0)
endfunction

h=0.2
disp(h*fxy(3.3, 4.4032258)+4.4032258) //k10

//disp(h*fxh2y(3.5, 4.4032, fxy)) //k20 k30 k40


//3.1   3.3         3.5         3.7      
//   3.9   4.1516129   4.4032258   4.6548387

//clc
////
//function w=f(x,y),w=y/x,endfunction;
//
//x0=3.1;y0=3.9;x=3.1:0.2:3.7;
//
//z=ode(y0,x0,x,f);
//
//disp([x;z])
//
//function dy=syst(t,y)
//
//dy=zeros(2,1);
//
//dy(1)=y(2);
//
//dy(2)=6*y(1)./(t^2);
//
//endfunction
//
//x0=[1;3];t0=1;
//
//t=1:0.2:1.6
//
//y=ode(x0,t0,t,syst)

