clear;

% part a
% Vectors in unitary matrices form an orthonormal basis. u(1)*u(2)=0
V = [.9602 -.2794; .2794 .9602];

% part b
% Any orthonormal basis constitutes an unitary matrix. Matrix randomly
% obtained (randn(3,3)).
U = orth([.5377 .8622 -.4336; 1.8339 .3188 .3426; -2.2588 -1.3077 3.5784]);

% part c
S = [diag([3 2]); [0 0]];
A = U*S*V';

% part d
% When in the basis, norm(Ax)=sigma(i)*norm(x)
% We are looking for a vector that doesn't fully align with the major basis
% vector. We can consider this vector as norm(x)=1
% norm(Ax)=norm(Sy)=sqrt((s(1)*y(1))^2+(s(2)*y(2))^2)=sqrt(13/2)
y1 = roots([2*3^2-2*2^2 0 2*2^2-13]);
y1 = y1(1); %Take just one solution
y2 = sqrt(1-y1^2); %Norm(y)=1
y = [y1;y2];
x = V*y; % y=V'*x

% part e
% b is linear combination of a vector of module 1 directed by U(:,3)
% and whatever else inside the basis of A
% The projection is the closest point. y = pinv(A)*b
b=U(:,3)+U(:,2);

% clear eveything except the required answers
clearvars -EXCEPT U V A x b;
