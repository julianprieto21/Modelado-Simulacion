function x=secante(f,x0,x1,N)
  x=x1;
  xant=x0;
  for k=1:N
    xsig=x-f(x)*(x-xant)/(f(x)-f(xant));
    xant=x;
    x=xsig;
  endfor
endfunction

f=@(x)exp(-x)-2*x
r=secante(f,-4,2,8)
orden=zeros(7,1);
for k=1:7
  orden(k)=log(abs(secante(f,-4,2,k+1)-r))/(log(abs(secante(f,-4,2,k)-r)));
endfor
orden
