function x=resuelve_U(U, b):
  x=zeros(size(b));
  x(1)=b(1)/U(1,1);
  for k=2:max(size(U))
    x(k)=(b(k)-U(k,1:k-1)*x(1:k-1))/U(k,k);
  endfor
endfunction
