clc 
clear all
close all
fs = 8000;
ch = 2;
nbits = 8;
recording=audiorecorder(fs,nbits,ch);
disp('SPEAK....')
recordblocking(recording,2);
disp('STOP');
play(recording)
Y=getaudiodata(recording);
N=10 %oRDER OF FILTER
fc=0.5;

% LOW PASS FILTER
num2=fir1(N,fc,'high');
den2=[1];
fvtool(num2,den2);
subplot(211);
plot(Y)
title('orignal signal')
FILTER2=filter(num2,den2,Y)
subplot(212);
plot(FILTER2)
title('filtered signal')

%HIGH Pass filter

num1=fir1(N,fc,'high');
den1=[1];
fvtool(num1,den1);
subplot(211);
plot(Y)
title('orignal signal')
FILTER1=filter(num1,den1,Y)
subplot(212);
plot(FILTER1)
title('filtered signal')

audiowrite('opewinl.wav', FILTER2, fs);
audiowrite('opewinh.wav', FILTER1, fs);