clc

//function [f_xi]=f(x)
//    f_xi = 1/(sqrt(1+x^2))
//endfunction

function [f_xi]=f(x)
    f_xi = sqrt(x^2+9)
endfunction

function [I]=FLP(f, x, n, h)
    I = 0
    for j = 0:1:(n-1)
    I = I + f(x(j+1))*h
//    disp(f(x(j+1))*h)
    end
endfunction

function [I]=FPP(f, x, n, h)
    I = 0
    for j = 1:1:(n)
    I = I + f(x(j+1))*h 
//    disp(I)
    end
endfunction

function [I]=FCP(f, x, n, h)
    I = 0
    for j = 0:1:(n-1)
    I = I + ( ( f(x(j+1)) + f(x(j+2)) ) / 2 ) * h
//    disp(I)
    end
endfunction

function [I]=FTRAP(f, x, n, h)
    I = 0
    for j = 1:1:(n-1)
    I = I + f(x(j+1))
//    disp(I)
    end
    I = ( I + ((f(x(1))+f(x(n+1)))/2) ) * h
//    disp(I)
endfunction

//x0 = x(1)
//если начинаем с 2 то на самом деле с 1

function [I]=FSIMP(f, x, n, h)
    I = 0
    for j = 2:n-1
     
        if modulo(j, 2) == 0 then I = I + 4*f(x(j))
                             else I = I + 2*f(x(j))
        end   
//        disp(I)                   
    end
    I = ( I + f(x(1)) + f(x(n))) * (h/3)
//   disp(I)
endfunction

h=0.49
disp('ФЛП',FLP(f, [0.1:h:5], 10, h))
disp('ФПП',FPP(f, [0.1:h:5], 10, h))
//disp('ФЦП',FCP(f, [0.1:h:5], 10, h))
disp('ФТРАП',FTRAP(f, [0.1:h:5], 10, h))
disp('FSIMP',FSIMP(f, [0.1:h:5], 11, h))

//disp('intg', intg(0.1, 5, f)) 
//disp('inttrap', inttrap([-0.8:h:2], f([-0.8:h:2])))
//disp('intsplin', intsplin([-0.8:h:2], f([-0.8:h:2])))
//disp('integrate', integrate('%e^((x^2)/8)', 'x', -0.8, 2))


