xe=-1:0.5:1; ## puntos equiespaciados
ye=exp(-3.*xe); ## imagen por la funcion
p4=polyfit(xe,ye,4); ## coeficientes del polinomio interpolador, ordenados decreciente en grado
x1=0:4;
x2=(2*x1+1)*pi/10;
nodos=cos(x2); ## raices del polinomio de Tchebychev de grado 5
y=exp(-3*nodos);
q4=polyfit(nodos,y,4); ## coeficientes del polinomio de Tchebychev de grado 5
error_equi=exp(-3*(-0.8))-polyval(p4,-0.8)
error_tcheby=exp(-3*(-0.8))-polyval(q4,-0.8)
grilla=[-1:0.01:1];
g1=polyval(p4,grilla);
g2=polyval(q4,grilla);
plot(grilla,exp(-3.*grilla),grilla,g1,grilla,g2,xe,ye,"b*",nodos,y,"b+")

x = 0:3;
y = [1,2.1,2.9,3.2];
mc1=polyfit(x,y,1) ## coeficientes de la recta de minimos cuadrados
mc2=polyfit(x,y,2) ## coeficientes de la funcion cuadratica que mejor aproxima en el sentido de minimos cuadrados
grilla=0:0.01:3;
im1=polyval(mc1,grilla);
im2=polyval(mc2,grilla);
plot(grilla,im1,grilla,im2,x,y,"b+")
