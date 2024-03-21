clear
clear all

%% Einlesen der Daten in Matlab

data = xlsread("Verzoegerung.xlsx");
t = data(:,1);
a =  (-1)*data(:,2);
am = Mittelwert(a);

%% Erstellen des Diagramms

figure(1)
grid on
hold on
plot(t, a)
hold off
ylabel('a in m/s²')
xlabel('t in s')

%% Bestimmen des Geschwindigkeitsverlaufs mittels Integration

% Integration mittels Schleife

va = IntFunktion(t, a);
va = va - va(end);

% Integration mittels Matlab interner Funktion
vb = cumtrapz(t, a);
vb = vb - vb(end);

figure(2)
grid on
hold on
plot(t, va*3.6, 'b-') % Erstellen des Diagramms "Integral mit Funktion"
plot(t, vb*3.6, 'r--') % Erstellen des Diagramms "cumtrapz" 
hold off
title('Vergleich Integrationsmethoden: Schleife - cumtrapz');
ylabel('Geschwindigkeit in km/h')
xlabel('Zeit in s')
legend('Integration mit Schleife', 'Integraton mit cumtrapz');