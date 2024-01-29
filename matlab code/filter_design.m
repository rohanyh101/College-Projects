a = audioread('ow.wav');
b = a + rand(16000,1);
tiledlayout('flow')
nexttile
%subplot(2,1,1)
plot(a)
f1 = linspace(0,8000,length(a));
f2 = linspace(0,8000,length(b));
title('original signal');
%subplot(2,1,2)
nexttile
plot(f2,b)
ylim([-1 2])
% xlim([2000,10000])
title('noise signal');
% subplot(4,1,3)
%nexttile
%plot(f1,abs(fft(a)))
%title('fft of org signal');
%xlabel('frequency');
%ylabel('magnitude');
nexttile
plot(f1,abs(fft(b)))
title('fft of noise signal');
xlabel('frequency');
ylabel('magnitude');
xlim([0,8000])
ylim([0,400])
y = filter(HPF,b);
%q = filter(LPF,a);
y_tr = fft(y);
%nexttile
%plot(f1,abs(fft(q)));
%title('fft of filtered org signal')
%nexttile
%plot(q)
%title('filtered org signal')
nexttile
plot(y)
title('filtered noise signal')
nexttile
plot(f2,abs(y_tr));
title('fft of filtered noise signal')
ylim([0 200])

nexttile
plot(f1,a);
title('fft of original signal')

