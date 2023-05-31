function x=biseccion(f, a, b, n)
  if (f(a)*f(b) > 0)
    x = "Error. No hay raiz en intervalo";
    return;
  endif
  for i=1:n
    x = (a + b) / 2;
    if (f(x) == 0)
      return;
    endif
    if (f(x)*f(a) < 0)
      b = x;
    else
      a = x;
    endif
  endfor
endfunction

