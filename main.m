f =@(x) tan(x) - (5*cos(x));
format long;
% Combinaciones de x0 y x1
combinaciones = [-pi/2, pi/2; -pi/3, pi/3; -0.5, 0.5; -0.05, 0.05; -10, 10]
n = 500; % Cantidad de iteraciones

% Iterar sobre las combinaciones
for i = 1:size(combinaciones, 1)
    x0 = combinaciones(i, 1);
    x1 = combinaciones(i, 2);

    % Imprime informacion adicional
    disp(["Combinación " num2str(i) ": x0 = " num2str(x0) ", x1 = " num2str(x1)]);

    % Ejecutar el método de la secante
    secante(f, x0, x1, n)

    disp("-------------------------------");
endfor
