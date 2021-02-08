char num
num='s';
while(num~=11)
 num = input("Enter to Encode: ");
 switch num
 case 1
 t=[0:0.000125:.05];
 fs=8000;
 f1=697;f2=1209;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;
 sound(y,fs)
 subdecode;
 case 2
 t=[0:0.000125:.05];
 fs=8000;
 f1=697;f2=1336;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 3
 t=[0:0.000125:.05];
 fs=8000;


 f1=697;f2=1447;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 4
 t=[0:0.000125:.05];
 fs=8000;
 f1=770;f2=1209;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 5
 t=[0:0.000125:.05];
 fs=8000;
 f1=770;f2=1336;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 6
 t=[0:0.000125:.05];
 fs=8000;
 f1=770;f2=1477;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 7
 t=[0:0.000125:.05];
 fs=8000;
 f1=852;f2=1209;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;
 sound(y,fs)
 subdecode;
 case 8
 t=[0:0.000125:.05];
 fs=8000;
 f1=852;f2=1336;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 9
 t=[0:0.000125:.05];
 fs=8000;
 f1=852;f2=1477;
 y1=.25*sin(2*pi*f1*t);

 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case 0
 t=[0:0.000125:.05];
 fs=8000;
 f1=941;f2=1336;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case '-'
 t=[0:0.000125:.05];
 fs=8000;
 f1=941;f2=1209;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs)
 subdecode;
 case '+'
 t=[0:0.000125:.05];
 fs=8000;
 f1=941;f2=1477;
 y1=.25*sin(2*pi*f1*t);
 y2=.25*sin(2*pi*f2*t);
 y=y1+y2;sound(y,fs);
 subdecode;
 end
end


