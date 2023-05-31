function x=secante(f,x0,x1,n)
  x=x1;
  xant=x0;
  for k=1:n
    if (f(x) == f(xant))
      break;
    endif
    xsig=x-f(x)*(x-xant)/(f(x)-f(xant));
    xant=x;
    x=xsig;
  endfor
  disp(k)
endfunction

