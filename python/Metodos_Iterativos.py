import math
import numpy as np
e = math.e
class Ecuaciones_no_lineales():
    def __init__(self, f, f_prima = 0, print = False):
        self.f = f
        self.f_prima = f_prima
        self.print = print

    def set_f_prima(self, f_prima):
        self.f_prima = f_prima

    def orden_convergencia(self, x_0, x_1, n):
        r = self.secante(x_0, x_1, n)
        orden = [0] * 6
        for k in range(6):
            print(k)
            orden[k] = math.log(math.fabs(self.secante(x_0, x_1, k+1)-r))/(math.log(math.fabs(self.secante(x_0, x_1, k)-r)))
        return orden
    
    def biseccion(self, intervalo, n):
        a = intervalo[0]
        b = intervalo[1]
        if (self.f(a)*self.f(b) > 0):
            return "Error: No hay raiz en el intervalo"
        for i in range(1,n+1):
            c = (a + b) / 2
            if (self.f(c) < 0):
                if self.print: print(f"Iteracion: {i}: {self.f(c)} con x = {c}")
                b = c
            elif (self.f(c) > 0):
                if self.print: print(f"Iteracion: {i}: {self.f(c)} con x = {c}")
                a = c
        return f"Raiz encontrada con {n} iteraciones en x = {c}"
    
    def newton_raphson(self, x_0, n):
        if (self.f_prima == 0):
            return "Error: No se ha definido la derivada de la funcion"
        x = x_0
        for i in range(n):
            x = x - self.f(x)/self.f_prima(x)
            if self.print: print(f"Iteracion: {i}: {self.f(x)} con x = {x}")
        return x
    
    def secante(self, x_0, x_1, n):
        x = x_1
        x_ant = x_0
        for i in range(n):
            if (self.f(x) - self.f(x_ant) == 0): return "Error: Division por cero"
            x_sig = x - self.f(x)*(x - x_ant)/(self.f(x) - self.f(x_ant))
            x_ant = x
            x = x_sig
            if self.print: print(f"Iteracion: {i}: {self.f(x)} con x = {x}")
        return x
     
    def punto_fijo(self):
        pass

def f(x): return e**(-x) - 2*x

def f_prima(x): return -e**(-x) - 2

metodo = Ecuaciones_no_lineales(f, print=False)
metodo.set_f_prima(f_prima)
# print(metodo.biseccion([0, 1], 5)) # x = 0.3437
# print(metodo.newton_raphson(0, 2)) # x = 0.3516
# print(metodo.secante(-4, 2, 5)) # x = 0.3517
print(metodo.orden_convergencia(-4, 2, 8)) # ????

class Ecuaciones_lineales():
    def __init__(self):
        pass