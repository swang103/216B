%Shu Wang
%EDP
Energy = [19.4, 15.4, 12.1, 9.04, 6.45,4.31,3.42,2.65,1.99];
tp_slow = [36,43,51,67,99,182,279,480,922];
tp_typical = [28,32,38,47,66,108,154,241,423];
tp_fast = [21, 24, 27, 33, 43, 63, 83, 119, 186];
vdd = [1 0.9 0.8 0.7 0.6 0.5 0.45 0.4 0.35];

EDP_slow=Energy .*tp_slow;
EDP_typical = Energy .*tp_typical;
EDP_fast = Energy .* tp_fast;

plot(vdd,EDP_slow,vdd,EDP_typical,vdd,EDP_fast);
legend('EDP slow','EDP typical','EDP fast')
title('EDP for all process corners')
xlabel('Vdd[V]')
ylabel('EDP')


%find the value of VDD that minimized EDP 
%vdd_slow = 0.7, vdd_tp=0.7, vdd_fast=0.5

vdd_slow = vdd(find(min(EDP_slow) == EDP_slow));
vdd_typical = vdd(find(min(EDP_typical) == EDP_typical));
vdd_fast = vdd(find(min(EDP_fast) == EDP_fast));

%idx_slow = find(min(EDP_slow) == EDP_slow); %the index of the minim EDP
%vdd_slow = x(idx_slow);