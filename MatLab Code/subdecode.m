figure('Name','Decoded pressed button')
subplot(3,1,1);
plot(t,y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;
rmain=2048*2;
rmag=1024*2;
cn=9;cr=0.5;
cl=.25;ch=.28;
[b,a]=cheby1(cn,cr,cl);
yfilt1=filter(b,a,y);
h2=fft(yfilt1,rmain);
hmag2=abs(h2(1:rmag));
[b1,a1]=cheby1(cn,cr,ch,'high');
yfilt2=filter(b1,a1,y);
h3=fft(yfilt2,rmain);
hmag3=abs(h3(1:rmag));
subplot(3,1,2);
plot(yfilt1);grid;
title('Low Freq. Signal');
xlabel('Time');ylabel('Amplitude');
subplot(3,1,3);
plot(yfilt2);grid;
title('High Freq. Signal');
xlabel('Time');ylabel('Amplitude');
m=max(abs(hmag2));n=max(abs(hmag3));
o=find(m==hmag2);p=find(n==hmag3);
j=((o-1)*fs)/rmain;
k=((p-1)*fs)/rmain;
if j<=732.59 & k<=1270.91;
 disp('---> Key Pressed is 1');
 elseif j<=732.59 & k<=1404.73;
 disp('---> Key Pressed is 2');
 elseif j<=732.59 & k<=1553.04;
 disp('---> Key Pressed is 3');
 elseif j<=732.59 & k>1553.05;
 disp('---> Key Pressed is A');
 elseif j<=809.96 & k<=1270.91;
 disp('---> Key Pressed is 4');
 elseif j<=809.96 & k<=1404.73;
 disp('---> Key Pressed is 5');
 elseif j<=809.96 & k<=1553.04;
 disp('---> Key Pressed is 6');
 elseif j<=809.96 & k>1553.05;
 disp('---> Key Pressed is B');
 elseif j<=895.39 & k<=1270.91;
 disp('---> Key Pressed is 7');
 elseif j<=895.39 & k<=1404.73;
 disp('---> Key Pressed is 8');
 elseif j<=895.39 & k<=1553.04;
 disp('---> Key Pressed is 9');
 elseif j<=895.39 & k>1553.05;
 disp('---> Key Pressed is C');
 elseif j>895.40 & k<=1270.91;
 disp('---> Key Pressed is *');
 elseif j>895.40 & k<=1404.73;
 disp('---> Key Pressed is 0');
 elseif j>895.40 & k<=1553.04;
 disp('---> Key Pressed is #');
 elseif j>895.40 & k>1553.05;
 disp('---> Key Pressed is D');
end