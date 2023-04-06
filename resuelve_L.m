function x=resuelve_L(L, b)
  x=zeros(size(b));
  x(1)=b(1)/L(1,1);
  for k=2:max(size(L))
    x(k)=(b(k)-L(k,1:k-1)*x(1:k-1))/L(k,k);
  endfor
  endfunction

