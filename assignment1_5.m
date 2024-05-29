clear;

% Load the variables ....
load("data5.mat")

% part a
W1=pinv(A1)';
E1 = mean((W1'*X1-S1).^2,2);
I1 = (W1'*A1-eye(3));

% part b
W2 = S2*pinv(X2);
E2 = mean((W2'*X2-S2).^2,2);
A2 = X2*pinv(S2);
I2 = (W2'*A2-eye(3));

% clear eveything except the required answers
clearvars -EXCEPT W1 E1 I1 W2 E2 A2 I2;