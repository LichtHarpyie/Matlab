function [x,iter] = bisektion(f,a,b,eps)
    x = a;
    iter = 0;

    while (abs(f(x)) > eps) && (iter < 1000)
        x = ( a + b) / 2;
        iter = iter + 1;

        if f(x) * f(a) < 0
            b = x;
        else
            a = x;
        end
    end   
end
