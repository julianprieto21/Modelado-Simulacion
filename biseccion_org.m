function x=biseccion_org(f, a, b, n)
  if (f(a)*f(b) > 0)
    x = "Error. No hay raiz en intervalo";
    return;
  endif
  for i=1:n
    x = (a + b) / 2;
    if (f(x) < 0)
      a = x;
    elseif (f(x) > 0)
      b = x;
    else
      return
    endif
  endfor
endfunction

