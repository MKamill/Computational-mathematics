//clc
//
//function n = f1 (xi, y1_i, yi)
//    n = 7*y1_i - 2*yi + xi^2 + 2
//endfunction
//
//function n = y1_iplus1 (y1_i, f1, xi, yi)
//    n = y1_i + 0.0001*f1(xi, y1_i ,yi)
//endfunction
//
//function n = y_iplus1 (yi, y1_i)
//    n = yi + 0.0001*y1_i
//endfunction
//
//function process()
//    a = 1.3
//    x = 2.1 
//    c = 8.1
//    for i = 1:1:10000
////        disp(x)
//        if ((x >= 2.2-0.00005) & (x <= 2.2+0.00005)) then    
//            disp('------------')   
//            disp(y1_iplus1(a, f1, x, c))
//            disp(y_iplus1(c, a))
//            disp(x + 0.001)
//            disp('------------')
//        end
//        if ((x >= 2.3-0.00005) & (x <= 2.3+0.00005)) then    
//            disp('------------')   
//            disp(y1_iplus1(a, f1, x, c))
//            disp(y_iplus1(c, a))
//            disp(x + 0.001)
//            disp('------------')
//        end
//        if ((x >= 2.4-0.00005) & (x <= 2.4+0.00005)) then    
//            disp('------------')   
//            disp(y1_iplus1(a, f1, x, c))
//            disp(y_iplus1(c, a))
//            disp(x + 0.001)
//            disp('------------')
//        end
//        if ((x >= 2.5-0.00005) & (x <= 2.5+0.00005)) then    
//            disp('------------')   
//            disp(y1_iplus1(a, f1, x, c))
//            disp(y_iplus1(c, a))
//            disp(x + 0.001)
//            disp('------------')
//        end
//        if ((x >= 2.6-0.00005) & (x <= 2.6+0.00005)) then    
//            disp('------------')   
//            disp(y1_iplus1(a, f1, x, c))
//            disp(y_iplus1(c, a))
//            disp(x + 0.001)
//            disp('------------')
//        end
//        a = y1_iplus1(a, f1, x, c)
//        c = y_iplus1(c, a)
//        x = x + 0.0001
//    end
//
//endfunction
//
//process()

clc

function n = f1 (xi, y1_i, yi)
    n = 2*yi
endfunction

function n = y1_iplus1 (y1_i, f1, xi, yi)
    n = y1_i + 0.0001*f1(xi, y1_i ,yi)
endfunction

function n = y_iplus1 (yi, y1_i)
    n = yi + 0.0001*y1_i
endfunction

function process()
    a = 4.5
    x = 1.5 
    c = 2.7
    for i = 1:1:10000
        if ((x >= 1.6-0.00005) & (x <= 1.6+0.00005)) then    
            disp('------------')   
            disp(y1_iplus1(a, f1, x, c))
            disp(y_iplus1(c, a))
            disp(x + 0.001)
            disp('------------')
        end
        if ((x >= 1.7-0.00005) & (x <= 1.7+0.00005)) then    
            disp('------------')   
            disp(y1_iplus1(a, f1, x, c))
            disp(y_iplus1(c, a))
            disp(x + 0.001)
            disp('------------')
        end
        if ((x >= 1.8-0.00005) & (x <= 1.8+0.00005)) then    
            disp('------------')   
            disp(y1_iplus1(a, f1, x, c))
            disp(y_iplus1(c, a))
            disp(x + 0.001)
            disp('------------')
        end
        if ((x >= 1.9-0.00005) & (x <= 1.9+0.00005)) then    
            disp('------------')   
            disp(y1_iplus1(a, f1, x, c))
            disp(y_iplus1(c, a))
            disp(x + 0.001)
            disp('------------')
        end
        if ((x >= 2.0-0.00005) & (x <= 2.0+0.00005)) then    
            disp('------------')   
            disp(y1_iplus1(a, f1, x, c))
            disp(y_iplus1(c, a))
            disp(x + 0.001)
            disp('------------')
        end
        a = y1_iplus1(a, f1, x, c)
        c = y_iplus1(c, a)
        x = x + 0.0001
    end

endfunction

process()

