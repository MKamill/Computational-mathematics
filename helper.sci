//Функция вывода списка.
function print_list(incoming_list)
    for i=1:size(incoming_list)
        disp(incoming_list(i))
    end
    disp(stars) 
endfunction

//Функция оформления лабы
function my_title(number,theme)
    mprintf('Лабораторная работа №%i. Тема: %s.\n\n',number,theme)
endfunction

//Измененная фунцкия disp.
function my_disp(varargin)
    out_str=''
    for i=1:length(varargin)
        if string(varargin(i))=='\n' then
                                     disp(out_str)
                                     out_str=''
                                     else  
                                     out_str=out_str+string(varargin(i))
        end                                 
    end
    //strsubst(out_str,'!','')
    disp(out_str)  
endfunction

//Измененная фунцкия disp.
function my_task_title(number,theme)
    mprintf(' Задание %i. %s.\n',number,theme) 
endfunction

//Остаток от деления.
function var = mod(dividend,divider)
    var=dividend-int(dividend/divider)*divider
endfunction

//надписи для уравнений вида ax^2+bx+c=0
function code = check_equation(a,b,c)
    code=0 
    if a==0 then code=1 end    
    if a==0 & b==0 then code=-1 end              
endfunction

//Звездочки.
stars='*********************************************'