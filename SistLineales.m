A = eye(10);
A(1,:) = 1:10;
A(:,1) = 1:10;
B = 2*ones(1,10);
A = rand(3000, 3000);
B = rand(3000, 1);
tic;A\B;toc;
tic;inv(A)*B;toc;
tic;inv(A);toc;
tic;lu(A);toc;

A'; # tranpuesta
[L, U, P] = lu(A);
eig(A); # Autovalores de A

A = [4 2 -2; 2 5 5; -2 5 11];
R = chol(A);

