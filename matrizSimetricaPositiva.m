function A = matriz_simetrica_definida_positiva(n)
  A = randn(n,n);
  A = 0.5 * (A + A');
  [~,p] = chol(A);
  while p ~= 0
    A = randn(n,n);
    A = 0.5 * (A + A');
    [~,p] = chol(A);
  endwhile
endfunction
