function ejercicio_6()
  x=-12;
  exact_value = exp(x);
  for n=1:100
    taylor_approx=0;
    for k = 0:n-1
      taylor_approx = taylor_approx + ((-1)^k)*(x^k)/(factorial(k));
    endfor
    error = abs(exact_value - taylor_approx);
    printf("n=%d, taylor_approx=%.15f, error=%.15f, valor:%f\n", n, taylor_approx, error, taylor_approx-error);
  endfor

