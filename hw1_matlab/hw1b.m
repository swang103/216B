 
%shu 
%216B hw1/b find K1 and K2
%https://www.mathworks.com/help/optim/ug/lsqcurvefit.html#d123e112950

Vdd=[1.00,0.90,0.80,0.70,0.60,0.50,0.45,0.40,0.35]; %xdata
tp=[28 32 38 47 66 108 154 241 423];%ydata

fun = @(x,Vdd)x(1).*Vdd./((Vdd-x(2)).^x(3));

lb = [0,0,1];%Kd Von,alpha
ub = [40,1,3];
x0 = [0,0,0];
x = lsqcurvefit(fun,x0,Vdd,tp,lb,ub);
times = linspace(Vdd(1),Vdd(end));
plot(Vdd,tp,'ko',times,fun(x,times),'b-');

legend('Data','Fitted non linear')
title('Data and Fitted Curve')
xlabel('Vdd[V]')
ylabel('tp_typical[ps]')


% x1=15.4470
% x2=0.2372
%   x3=2



% x1=13.9184
% x2=0.2230
% x3=2.1643