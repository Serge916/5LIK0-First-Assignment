clear;

% Load the variables ....
load("data4.mat")

X = [cos(deg2rad(x));
    sin(deg2rad(y));
    ones(1,length(x))];
W = z*pinv(X);
a=W(1);
b=W(2);
c=W(3);

E = sum(abs(z-W*X));


% clear eveything except the required answers
clearvars -EXCEPT a b c