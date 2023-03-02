%%%%%% spectral efficiency versus number of BS antennas for K = 16, 32, 64, 128 users operating at a minus 6 dB SINR.
clear all
clc
p=10^(-0.6);
M=0:30:600;
for c=4:7
    k=2^c;
    Csumcb=k*log(1+M*p/(k*(1+p)))/log(2);
    plot(M,Csumcb,'LineWidth',1)
    hold on
end
%Specifying the effect of doubling the number of antennas of base statiions and the number od users simultaneously 
for a=4:7 
    M=2^(a+2);
    k=2^a;
    Csum=k*log(1+M*p/(k*(1+p)))/log(2);
    plot(M,Csum,'ro','LineWidth',5,'MarkerSize',2)
    hold on
end
xlabel('Number of Services Antennas')
ylabel('Total Spectral Efficiency (b/s/Hz)')
title('-6.0 dB SINR')
gtext('16 users')
gtext('32 users')
gtext('64 users')
gtext('128 users')
grid on