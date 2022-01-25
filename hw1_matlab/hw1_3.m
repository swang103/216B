%https://www.mathworks.com/help/optim/ug/example-nonlinear-constrained-minimization.html
E = @(x)2*x(1)+2*x(2)+30;%energy
A = [];
b = [];
Aeq = [];
beq = [];
x0 = [0,0];

nonlcon = @constraints; %nonlinear constraint
x0 = [1,1];
A = []; % No other constraints
b = [];
Aeq = [];
beq = [];
lb = [0,0];
ub = [10,10];
x = fmincon(E,x0,A,b,Aeq,beq,lb,ub,nonlcon)
disp('energy is' )
disp( 2*x(1)+2*x(2)+30);%display the minimun energy
function [c,ceq] = constraints(x)
c = x(1)+8/x(1)+x(2)/4+16/x(2)+4-13.66*1.1;
ceq = [];
end
