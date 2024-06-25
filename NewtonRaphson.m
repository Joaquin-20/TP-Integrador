function [Raiz,Iteraciones] = NewtonRaphson(f,x0,Tol,NMax)
    arguments
        f (1,:) cell {mustBeFunctionHandler}
        x0 double {mustBeReal}
        Tol double {mustBeReal,mustBePositive}
        NMax uint32 
    end
%Resuelve sistemas de ecuaciones lineales o no lieales por el metodo de NewtonRaphson

while abs(f(x)) >= Tol && Contador < NMax
    X = Xk - J^(-1)*F;
end


end
function mustBeFunctionHandler(f)
    if ~iscell(f)
        error('f debe ser una celda.');
    end
    for i = 1:length(f)
        if ~isa(f{i}, 'function_handle')
            error('Todos los elementos de la celda f deben ser function_handle.');
        end
    end
end