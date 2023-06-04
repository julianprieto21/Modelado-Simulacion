f =@(x) tan(x) - (5*cos(x));
format long;
% Combinaciones de x0 y x1
# combinaciones = [0.5, 1.0; -1.0, -0.5; 2.0, 1.5; -1.0, -2.0; -2.0, -0.5];
combinaciones = [-pi/2, pi/2; -pi/3, pi/3]
% Iterar sobre las combinaciones
for i = 1:size(combinaciones, 1)
    x0 = combinaciones(i, 1);
    x1 = combinaciones(i, 2);
    n = 500; % Cantidad de iteraciones

    disp(["Combinación " num2str(i) ": x0 = " num2str(x0) ", x1 = " num2str(x1)]);

    % Ejecutar el método de la secante
    secante(f, x0, x1, n)

    disp("-------------------------------");
endfor

#r = secante(f, -1, 1, 100)
#x = linspace(-20, 20, 100);
#y = f(x);
#plot(x, y);
#xlabel('x');  % Etiqueta del eje x
#ylabel('y');  % Etiqueta del eje y
#title('Gráfico de tan(x) - 5.cos(x)');  % Título del gráfico
#grid on;
#hold on;
#y = linspace(-20, 20, 100);
#plot(r * ones(size(y)), y, "r-");
#hold off;
