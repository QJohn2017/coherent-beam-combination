
phi0=0;phi1=0;phi2=-(13/w0).^2;      %ѡ�������λ���Ĵ�С
alpha=(2*sqrt(log(2))/taup).^2/2;
beta=1/(2*phi2);
theta=atan(beta/alpha);
Eout=A0*(2*phi2)^(-0.5)*(alpha^2+beta^2)^(-0.25)*exp(i*(w0*(t-phi1)+phi0-theta/2))...
    .*exp(-alpha*beta^2*(alpha^2+beta^2)^-1*t.^2).*exp(-i*(alpha^2*beta*(alpha^2+beta^2)^-1*t.^2));
a=16*(log(2))^2;
% taupuot=(1+a*phi2^2/(taup)^4)^0.5*taup;
% phiout=-((phi2/2)*(phi2^2+taup^4/a)^-1)*t.^2+w0*phi1+phi0-theta/2;
figure,plot(t,Eout);
xlabel('t/s');
ylabel('��ɫɢ����Eout��ʵ��');
title('�ⳡʵ����ʱ��ı仯');
figure,plot(t,abs(Eout).^2);
xlabel('t/s');
ylabel('�ⳡǿ��');
title('�ⳡǿ����ʱ��ı仯');
wout=-2*((phi2/2)*(phi2^2+taup^4/a)^-1)*t+w0;
figure,plot(t,wout);
xlabel('t/s');
ylabel('Ƶ��');
title('�ⳡƵ����ʱ��ı仯');
