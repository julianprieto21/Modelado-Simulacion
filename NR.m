function sol=NR(f,x0,fprima,n)
  sol=x0;
  for i=1:n
    sol=sol-f(sol)/fprima(sol);
  endfor
endfunction
