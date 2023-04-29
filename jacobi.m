function x=jacobi(A, b, n)

  D = diag(diag(A));
  R = A - D;
  B = -inv(D)*R;
  autovalores = eig(B);
  if max(abs(autovalores)) >= 1
    disp("No es convergente!")
    return
  endif
  # Continua con el metodo
  c = inv(D)*b;
  prev_x = 0;
  for i = 1:n
    x = B*i+c;
    if (prev_x - x) < 10^(-15)
      disp("Las ultimas dos iteraciones son casi iguales")
      printf("Valor de x es %d\n", x)
      printf("Numero de iteraciones hechas es %d\n", i)
      return
    else
      prev_x = x;
    endif
  endfor
endfunction

