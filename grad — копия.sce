clc


//----------РЕШЕНИЕ-ОТ-ЕР-------------------------------
//function y=ff(x)
//    y=x(1)^2+x(2)^2+x(1)*x(2)-8*x(1)-2*x(2)
//endfunction
//
//[x,y]=fminsearch(ff,[0,0])
//disp([x,y])
//----------РЕШЕНИЕ-ОТ-ЕР-------------------------------
disp('-----------------------------------------')

E=0.05
h=0.5

function w = f(x1, x2)
    w = x1^2+x2^2+x1*x2-8*x1-2*x2 //исходня функция
endfunction

function w = df_x1(x1, x2)
    w = 2*x1+x2-8 // частная по х1
endfunction

function w = df_x2(x1, x2)
    w = 2*x2+x1-2 // частная по х2
endfunction

function w = x1_1(x1_0, x2_0, h)
    w = x1_0 - h*df_x1(x1_0, x2_0)
endfunction

function w = x2_1(x1_0, x2_0, h)
    w = x2_0 - h*df_x2(x1_0, x2_0)
endfunction

function w = grad(df_x1, df_x2, x1_1, x2_1)
    w = sqrt(df_x1(x1_1, x2_1)^2+df_x2(x1_1, x2_1)^2)
endfunction

function proc(x1_0, x2_0)
    disp('f('+string(x1_0)+','+string(x2_0)+')='+string(f(x1_0,x2_0)))
    disp('x1_1='+string(x1_1(x1_0,x2_0, 0.5)))
    disp('x2_1='+string(x2_1(x1_0,x2_0, 0.5)))
    disp('f('+string(x1_1(x1_0,x2_0, 0.5))+','+string(x2_1(x1_0,x2_0, 0.5))+')='+string(f(x1_1(x1_0,x2_0, 0.5),x2_1(x1_0,x2_0, 0.5))))

    if f(x1_0,x2_0) > f(x1_1(x1_0,x2_0, 0.5),x2_1(x1_0,x2_0, 0.5)) then
     disp('шаг не меняем ибо '+ 'f('+string(x1_0)+','+string(x2_0)+')>'+'f('+string(x1_1(x1_0,x2_0, 0.5))+','+string(x2_1(x1_0,x2_0, 0.5))+')')
    else
     disp('? что делать с шагом ?' + + 'f('+string(x1_0)+','+string(x2_0)+')<'+'f('+string(x1_1(x1_0,x2_0, 0.5))+','+string(x2_1(x1_0,x2_0, 0.5))+')')
    end

    if grad(df_x1, df_x2, x1_1(x1_0,x2_0, 0.5), x2_1(x1_0,x2_0, 0.5)) < E then
     disp('можем останавливаться по градиенту '+string(grad(df_x1, df_x2, x1_1(x1_0,x2_0, 0.5), x2_1(x1_0,x2_0, 0.5)))+'<'+string(E))
    else
     disp('продолжаем по градиенту '+string(grad(df_x1, df_x2, x1_1(x1_0,x2_0, 0.5), x2_1(x1_0,x2_0, 0.5)))+'>='+string(E))
    end
    
    if abs(f(x1_1(x1_0,x2_0, 0.5),x2_1(x1_0,x2_0, 0.5))-f(x1_0, x2_0)) < E then
     disp('можем останавливаться по модулю '+string(abs(f(x1_1(x1_0,x2_0, 0.5),x2_1(x1_0,x2_0, 0.5))-f(x1_0, x2_0)))+'<'+string(E))
    else
     disp('продолжаем по считать по модулю '+string(abs(f(x1_1(x1_0,x2_0, 0.5),x2_1(x1_0,x2_0, 0.5))-f(x1_0, x2_0)))+'>='+string(E))
    end
endfunction

proc(4.625,-1.1875)

