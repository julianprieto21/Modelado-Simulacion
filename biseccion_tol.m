function [c, iter]=biseccion_tol(f, a, b, tol)
  if (f(a)*f(b) > 0)
    x = "Error. No hay raiz en intervalo";
    return;
  endif
  iter = 0;
  while (b-a < tol)
    iter = iter + 1;
    c = (a+b)/2;
    if (f(c) == 0)
      break
    elseif (f(a)*f(c) < 0)
      b = c;
    else
      a = c
    endif
  endwhile
endfunction

# No correr

