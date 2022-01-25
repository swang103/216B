
%216B hw1/a find K1 and K2
%https://www.mathworks.com/help/optim/ug/lsqcurvefit.html#d123e112950
%{

FO=[2 3 4 5 6 7 8 9 10]; %xdata
tp=[17 23 28 34 40 45 50 56 62];%ydata

fun = @(K,FO)K(1)+K(2)*FO;
K0 = [-10,0];
K = lsqcurvefit(fun,K0,FO,tp);
times = linspace(FO(1),FO(end));
plot(FO,tp,'ko',times,fun(K,times),'b-');

legend('Data','Fitted non linear')
title('Data and Fitted Curve')
xlabel('FO')
ylabel('tp[ps]')
disp('K1 and K2 is ')
disp(K)
%}
%K1= 6.0444,K2=5.5667
%-------------------------------------------


FO=[2 3 4 5 6 7 8 9 10]; %xdata
tp=[17 23 28 34 40 45 50 56 62];%ydata
tp=tp/5.5667

fun = @(K,FO)K(1)+FO;
K0 = [-10,0];
K = lsqcurvefit(fun,K0,FO,tp);
times = linspace(FO(1),FO(end));
plot(FO,tp,'ko',times,fun(K,times),'b-');

legend('Data','Fitted non linear')
title('Data and Fitted Curve')
xlabel('FO')
ylabel('tp[ps]')
disp('new K1  is ')
disp(K)

%K1=1.0858





