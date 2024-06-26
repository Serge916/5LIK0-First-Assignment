clear;

% Load the variables ....
load("data1.mat")

% part a
a=null(A);
a1 = a(:,1);
a2 = a(:,2);

% part b
[~,pivots]=rref(B);
V=B(:,pivots);

% part c
x_proj = C'*[1;0;0;0;0;0];
x = 2*x_proj/norm(x_proj);

% part d
% D has two independent vectors. Thus, the third vector in the isometry (u)
% is the orthogonal complementary
[u,s,v]=svd(D);
U=u(:,3);

% part e
% Just take any linear combination of E
e = 2*E(:,1)-E(:,2);

% clear eveything except the required answers
clearvars -EXCEPT a1 a2 V x U e;
