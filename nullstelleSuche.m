x = -2:0.1:2;
eps = exp(-7);
y = fx(x);
plot(x, y,'b-');
grid on
hold on

weiter = 'j';

if  weiter == 'j' 
    a=input('Intervalgrenze a = ');
    b=input('Intervalgrenze b = ');
    [nullstelle, anzahllterationen] = bisektion(@fx, a, b, eps);

    if anzahllterationen < 1000 
        disp(['Anzahl der Nullstellen = ', num2str(nullstelle)])
        disp(['Anzahl der Iterationen = ', num2str(anzahllterationen)])
        plot(nullstelle, fx(nullstelle),'r*')
    else
        disp('keine Nullstelle gefunden!')
    end
        weiter=input('Weitere Nullstelle suchen? (j) ','s');

end









