# 4
b = [1;
     1;
     2];

L = [2 3 1;
     5 2 6;
     2 5 1];

x = resuelve_L(L, b);

L*x; # Deberia dar b

# 7
matrizSimetricaPositiva(3);

# 10
A = [1 2 -3 4;
     -2 3 0 1;
     0 5 0 -1;
     3 2 0 0 ];

norm(A, "inf");

max(sum(abs(A))); # ||A||1

# 11
A = [3 0 0; 0 5/4 3/4; 0 3/4 5/4];
A_inversa = inv(A);
# Condicional sub-2
i = norm(A, "fro");
j = norm(A_inversa, "fro");

i * j;
cond(A, "fro");
# Condicional sub-infinito
i = norm(A);
j = norm(A_inversa);
i * j;
cond(A);

# Condicional sub-uno
i = max(sum(abs(A)));
j = max(sum(abs(A_inversa)));
i * j;
cond(A, 1);

# 12
B = [5 7 6 5;
     7 10 8 7;
     6 8 10 9;
     5 7 9 10];
norm(B, "inf"); # infinito
norm(B, 1); # 1
norm(B, "fro"); # 2


A = [
3 1 1;
2 6 1;
1 1 4
];
b = [
5;
9;
6];
tril
jacobi(A, b, 100);



