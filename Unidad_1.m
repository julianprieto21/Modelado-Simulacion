# 1
realmin; # Mayor nro representable
realmax; # Menor nro representable
eps; # Epsilon

# 2
a = (1 + eps/2) + eps/2;
b = 1 + (eps/2 + eps/2);
c = ((1 + eps/2) + eps/2) - 1;
d = (1 + (eps/2 + eps/2)) - 1;

# 5
j = 1:25;
f = cos(pi + 2*pi*10.^j);

# 7
a = 0;
b = 1;
c = sqrt(2)/2;
d = 1/4;
e = 1;
format long
for n=1:10
  for n=1:n
    a = b;
    b = (b+c)/2;
    c = sqrt(c*a);
    d = d - e*(b-a)^2;
    e = 2*e;
  endfor
  n;
  f = (b^2)/d;
  g = ((b+c)^2)/(4*d);
endfor

# Ejercicio 8
for n=1:20
  n
  printf("a\n")
  (3/4)^n
  printf("b\n")
  (7/8)^(n^2)
  printf("c\n")
  (2/3)^(2*n)
endfor
