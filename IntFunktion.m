function ia = IntFunktion(t, a)
    n = length(a);
    nt = length(t);

    if nt == n
        ia = zeros(1,n);

        for i = 1:n-1
            ia(i+1) = ia(i) + 0.5*(a(i+1)+a(i))*(t(i+1)-t(i));
        end
    else
        ia = 0;
        disp("Vektorlänge stimmt nicht überein");
    end
end