f = @(x) 1 ./ (1+25*(x.^2));
grilla = [-1:0.01:1];
y = f(grilla)

# n = 5
xe = [-1:2/5:1];
ye = f(xe);

% grado = 2/5 * n
p2 = polyfit(xe, ye, 2);
g2 = polyval(p2, grilla);
% grado = 4/5 * n
p4 = polyfit(xe, ye, 4);
g4 = polyval(p4, grilla);

p5 = polyfit(xe, ye, 5);
g5 = polyval(p5, grilla);

plot(grilla, y, grilla, g2, grilla, g4, grilla, g5)
title('n = 5')
legend('y', 'g2', 'g4', 'g5')
print('grafico_n5.png', '-dpng');

# n = 10
xe = linspace(-1, 1, 11);
ye = f(xe);

% grado = 2/5 * n
p4 = polyfit(xe, ye, 4);
g4 = polyval(p4, grilla);
% grado = 4/5 * n
p8 = polyfit(xe, ye, 8);
g8 = polyval(p8, grilla);

p10 = polyfit(xe, ye, 10);
g10 = polyval(p10, grilla);

plot(grilla, y, grilla, g4, grilla, g8, grilla, g10);
title('n = 10')
legend('y', 'g4', 'g8', 'g10')
print('grafico_n10.png', '-dpng');

# n = 15
xe = linspace(-1, 1, 16);
ye = f(xe);
% grado = 2/5 * n
p6 = polyfit(xe, ye, 6);
g6 = polyval(p6, grilla);
% grado = 4/5 * n
p12 = polyfit(xe, ye, 12);
g12 = polyval(p12, grilla);

p15 = polyfit(xe, ye, 15);
g15 = polyval(p15, grilla);

plot(grilla, y, grilla, g6, grilla, g12, grilla, g15)
title('n = 15')
legend('y', 'g6', 'g12', 'g15')
print('grafico_n15.png', '-dpng');


