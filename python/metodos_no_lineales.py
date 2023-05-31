from math import exp, inf

def biseccion(f, a, b, n, tol = 0):
    if (f(a)*f(b) > 0):
        return "Error: No hay raiz en el intervalo"
    if (tol == 0):
        for i in range(1,n+1):
            c = (a + b) / 2
            if (f(c) == 0):
                return f"Raiz encontrada con {n} iteraciones en x = {c} --> {f(c)}"
            if (f(c)*f(a) > 0):
                print(f"Iteracion: {i}: {f(c)} con x = {c}")
                # b = c
                a = c
            else:
                print(f"Iteracion: {i}: {f(c)} con x = {c}")
                # a = c
                b = c
    else:
        c = (a + b) / 2
        i = 1
        while (abs(f(c)) > tol):
            c = (a + b) / 2
            if (f(c) == 0):
                return f"Raiz encontrada con {n} iteraciones en x = {c} --> {f(c)}"
            if (f(c)*f(a) > 0):
                print(f"Iteracion: {i}: {f(c)} con x = {c}")
                # b = c
                a = c
            else:
                print(f"Iteracion: {i}: {f(c)} con x = {c}")
                # a = c
                b = c
            i += 1

def f_1(x): return exp(-x) - 2*x

def f_2(x): return x**2 -2

def f_3(x): return x**3 - 2

def f_4(x): return -2*x**3 + 6*x - 1

# biseccion(f_4, 1, 2, 0, 10**-5)


def newton_raphson(f, df, x_0, n):
    for i in range(1, n+1):
        if (df(x_0) == 0):
            return "Error: Division por cero"
        x = x_0 - f(x_0)/df(x_0)
        print(f"Iteracion: {i}: {f(x)} con x = {x}")
        x_0 = x

def f(x): return x**3 -2

def df(x) : return 3*x**2

# newton_raphson(f, df, 2, 6)


def secante(f, x_0, x_1, n):
    for i in range(n+1):
        if (f(x_1) - f(x_0) == 0):
            return "Error: Division por cero"
        x = x_1 - f(x_1)*(x_1 - x_0)/(f(x_1) - f(x_0))
        print(f"Iteracion: {i}: {f(x)} con x = {x}")
        x_0 = x_1
        x_1 = x


def punto_fijo(g, x_0, n):
    for i in range(n+1):
        x = g(x_0)
        if (x == x_0):
            print(f"Raiz encontrada con {n} iteraciones en x = {x} --> {g(x)}")
            return
        print(f"Iteracion: {i}: {g(x)} con x = {x}")
        x_0 = x

def g(x): return (x**3+18)/13

# punto_fijo(g, 1, 10)

def f(x): return (x+2)*exp(x) - 5

import math
print(math.pi/2)