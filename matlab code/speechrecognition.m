function speechrecognition(filename)
 
%speechrecognition('test.wav')
voice=audioread(filename);
x=voice;
x=x';
x=x(1,:);
x=x';
y1=audioread('openwindow.wav');
y1=y1';
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
m1=max(z1);
l1=length(z1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';
subplot(1,2,1);
plot(z1);
title('reference signal openwindow')
xlabel('Time');
ylabel('Amplitude');
y2=audioread('closewindow.wav');
y2=y2';
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
m2=max(z2);
l2=length(z2);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';
subplot(1,2,2);
plot(z2);
title('reference signal closewindow')
xlabel('Time');
ylabel('Amplitude');
figure


m3 = 70;
a=[m1 m2 m3];
m=max(a);
m
m1
m2
h=audioread('access.wav');
if m<=m1
    %soundsc(audioread('ow.wav'),8000)
        soundsc(h,8000)
        plot(z1);
        title('Cross correlation of ow');
        xlabel('Lag');
        ylabel('Correlation Magnitude');
elseif m<=m2
    %soundsc(audioread('cw.wav'),8000)
        soundsc(h,8000)
        plot(z2);
        title('Cross correlation of cw');
        xlabel('Lag');
        ylabel('Correlation Magnitude');
else
   soundsc(audioread('denied.wav'),50000)
end