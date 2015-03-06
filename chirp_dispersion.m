%% ���
%%  ����౸�˹����
clear                    %����ڴ�
clc                      %����
A0=1;                    %�����һ��
lambda=1030e-9;           %�Ⲩ��ѡ��800nm
c=3e8;                   %����
w0=2*pi*c/lambda;        %���Ľ�Ƶ��
taup=5*lambda/c;         %���������ѡ��Ϊ�������ڵ�5��
t=(-3:0.01:3)*taup;      %ѡ��ʱ�䷶Χ
Et=A0*exp(-(t/taup).^2).*exp(i*w0*t);  %����౸�˹����
subplot(1,3,1),plot(t,Et);
xlabel('t/s');
ylabel('E��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(1,3,2),plot(t,abs(Et).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
w=w0;
subplot(1,3,3),plot(t,w);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%%  ��������౸�˹����
clear                    %����ڴ�
clc                      %����
A0=1;                    %�����һ��
lambda=800e-9;           %�Ⲩ��ѡ��800nm
c=3e8;                   %����
w0=2*pi*c/lambda;        %���Ľ�Ƶ��
taup=5*lambda/c;         %���������ѡ��Ϊ�������ڵ�5��
t=(-3:0.01:3)*taup;      %ѡ��ʱ�䷶Χ
phi2=(w0/10).^2;         %ѡ�������λ���Ĵ�С
Et=A0*exp(-(t/taup).^2).*exp(i*(w0*t+phi2*t.^2)); %��������౸�˹����
subplot(1,3,1),plot(t,Et);
xlabel('t/s');
ylabel('E��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(1,3,2),plot(t,abs(Et).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
w=w0+2*phi2*t;
subplot(1,3,3),plot(t,w);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%%  ��������౸�˹����
clear                    %����ڴ�
clc                      %����
A0=1;                    %�����һ��
lambda=800e-9;           %�Ⲩ��ѡ��800nm
c=3e8;                   %����
w0=2*pi*c/lambda;        %���Ľ�Ƶ��
taup=5*lambda/c;         %���������ѡ��Ϊ�������ڵ�5��
t=(-3:0.01:3)*taup;      %ѡ��ʱ�䷶Χ
phi2=-(w0/10).^2;         %ѡ�������λ���Ĵ�С
Et=A0*exp(-(t/taup).^2).*exp(i*(w0*t+phi2*t.^2)); %��������౸�˹����
subplot(1,3,1),plot(t,Et);
xlabel('t/s');
ylabel('E��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(1,3,2),plot(t,abs(Et).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
w=w0+2*phi2*t;
subplot(1,3,3),plot(t,w);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
 
%% ɫɢ
%% ����౸�˹����ͨ��ɫɢ����
clear                    %����ڴ�
clc                      %����
A0=1;                    %�����һ��
lambda=800e-9;           %�Ⲩ��ѡ��800nm
c=3e8;                   %����
w0=2*pi*c/lambda;        %���Ľ�Ƶ��
taup=3*lambda/c;         %���������ѡ��Ϊ�������ڵ�5��
t=(-3:0.01:3)*taup;      %ѡ��ʱ�䷶Χ
%����౸�˹����
Et=A0*exp(-2*log(2)*(t/taup).^2).*exp(i*w0*t);  
w=w0;
subplot(3,3,1),plot(t,Et);
xlabel('t/s');
ylabel('E��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,2),plot(t,abs(Et).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
subplot(3,3,3),plot(t,w);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%����౸�˹����ͨ����ɫɢ����phi2<0
phi0=0;phi1=0;phi2=-(13/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
theta=atan(beta/alpha);
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+beta^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+beta^2)^-1*t.^2).*exp(-i*(alpha^2*beta*(alpha^2+beta^2)^-1*t.^2));
a=16*(log(2))^2;
% taupuot=(1+a*phi2^2/(taup)^4)^0.5*taup;
% phiout=-((phi2/2)*(phi2^2+taup^4/a)^-1)*t.^2+w0*phi1+phi0-theta/2;
subplot(3,3,4),plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,5),plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*((phi2/2)*(phi2^2+taup^4/a)^-1)*t+w0;
subplot(3,3,6),plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%����౸�˹����ͨ����ɫɢ����phi2>0
phi0=0;phi1=0;phi2=(13/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
theta=atan(beta/alpha);
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+beta^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+beta^2)^-1*t.^2).*exp(-i*(alpha^2*beta*(alpha^2+beta^2)^-1*t.^2));
a=16*(log(2))^2;
 
subplot(3,3,7),plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,8),plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*((phi2/2)*(phi2^2+taup^4/a)^-1)*t+w0;
subplot(3,3,9),plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%% ������౸�˹����ͨ��ɫɢ����
clear                    %����ڴ�
clc                      %����
A0=1;                    %�����һ��
lambda=800e-9;           %�Ⲩ��ѡ��800nm
c=3e8;                   %����
w0=2*pi*c/lambda;        %���Ľ�Ƶ��
taup=3*lambda/c;         %���������ѡ��Ϊ�������ڵ�5��
t=(-3:0.01:3)*taup;      %ѡ��ʱ�䷶Χ
% ��������౸�˹����
delta=-w0/5;             %deltaΪ��������ౣ�deltaΪ��������ౡ�
Et=A0*exp(-2*log(2)*(t/taup).^2).*exp(-i*(delta/taup)*t.^2).*exp(i*w0*t);  
w=w0-2*(delta/taup)*t;
subplot(3,3,1),plot(t,Et);
xlabel('t/s');
ylabel('�����E��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,2),plot(t,abs(Et).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
subplot(3,3,3),plot(t,w);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
% ��������౸�˹����ͨ����ɫɢ����phi2<0
phi0=0;phi1=0;phi2=-(5/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
b=delta/taup;
theta=atan(b/alpha);
theta2=atan(((alpha^2+b^2)+b*beta)/(alpha*beta));
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+(b+beta)^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0+theta2/2-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+(b+beta)^2)^-1*t.^2).*exp(-i*beta*(alpha^2+b*(b+beta))*(alpha^2+(b+beta)^2)^-1*t.^2);
a=16*(log(2))^2;
subplot(3,3,4),plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,5),plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*(((1+2*phi2*delta/taup)*(delta/taup)+a*phi2^2/(2*taup^4))/((1+2*phi2*delta/taup)^2+...
    a*phi2^2/taup^4))*t+w0;
subplot(3,3,6),plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
% ��������౸�˹����ͨ����ɫɢ����phi2>0
phi0=0;phi1=0;phi2=(4/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
theta=atan(beta/alpha);
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+(b+beta)^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0+theta2/2-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+(b+beta)^2)^-1*t.^2).*exp(-i*beta*(alpha^2+b*(b+beta))*(alpha^2+(b+beta)^2)^-1*t.^2);
a=16*(log(2))^2;
taupuot=(1+a*phi2^2/(taup)^4)^0.5*taup;
phiout=-((phi2/2)*(phi2^2+taup^4/a)^-1)*t.^2+w0*phi1+phi0-theta/2;
subplot(3,3,7),plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,8),plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*(((1+2*phi2*delta/taup)*(delta/taup)+a*phi2^2/(2*taup^4))/((1+2*phi2*delta/taup)^2+...
    a*phi2^2/taup^4))*t+w0;
subplot(3,3,9),plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%% ��������౸�˹����
clear                    %����ڴ�
clc                      %����
A0=1;                    %�����һ��
lambda=800e-9;           %�Ⲩ��ѡ��800nm
c=3e8;                   %����
w0=2*pi*c/lambda;        %���Ľ�Ƶ��
taup=3*lambda/c;         %���������ѡ��Ϊ�������ڵ�5��
t=(-3:0.01:3)*taup;      %ѡ��ʱ�䷶Χ
delta=w0/5;             %deltaΪ��������ౣ�deltaΪ��������ౡ�
Et=A0*exp(-2*log(2)*(t/taup).^2).*exp(-i*(delta/taup)*t.^2).*exp(i*w0*t);  
w=w0-2*(delta/taup)*t;
subplot(3,3,1),plot(t,Et);
xlabel('t/s');
ylabel('�����E��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,2),plot(t,abs(Et).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
subplot(3,3,3),plot(t,w);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%��������౸�˹����ͨ����ɫɢ����phi2<0
phi0=0;phi1=0;phi2=-(5/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
b=delta/taup;
theta=atan(b/alpha);
theta2=atan(((alpha^2+b^2)+b*beta)/(alpha*beta));
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+(b+beta)^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0+theta2/2-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+(b+beta)^2)^-1*t.^2).*exp(-i*beta*(alpha^2+b*(b+beta))*(alpha^2+(b+beta)^2)^-1*t.^2);
a=16*(log(2))^2;
subplot(3,3,4),plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,5),plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*(((1+2*phi2*delta/taup)*(delta/taup)+a*phi2^2/(2*taup^4))/((1+2*phi2*delta/taup)^2+...
    a*phi2^2/taup^4))*t+w0;
subplot(3,3,6),plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
%��������౸�˹����ͨ����ɫɢ����phi2>0
phi0=0;phi1=0;phi2=(4/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
theta=atan(beta/alpha);
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+(b+beta)^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0+theta2/2-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+(b+beta)^2)^-1*t.^2).*exp(-i*beta*(alpha^2+b*(b+beta))*(alpha^2+(b+beta)^2)^-1*t.^2);
a=16*(log(2))^2;
subplot(3,3,7),plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
subplot(3,3,8),plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*(((1+2*phi2*delta/taup)*(delta/taup)+a*phi2^2/(2*taup^4))/((1+2*phi2*delta/taup)^2+...
    a*phi2^2/taup^4))*t+w0;
subplot(3,3,9),plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
