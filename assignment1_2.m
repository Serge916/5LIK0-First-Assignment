clear;

% Load the variables ....
load("data2.mat")

% part a
%Check for sigma>5, take that unitary vector and shorten it a bit
[U,S,V]=svd(A);
v = .99*V(:,1);

% part b
%Sigma3=1, x1 is therefore v(3)
%x2 should be searchable by adding v(3) to v(2)
B = diag([2,1,0]);
% part c
% CN=sigma1/sigmar; norm(C)=3=sigma1; rank(2)=>sigmar=sigma2
% U and V can be Identity. Then, C = USV=S
C = [diag([3 .75]);[0 0]];

% clear eveything except the required answers
clearvars -EXCEPT v B C;
