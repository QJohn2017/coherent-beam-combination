function EC= ECenergySquare(I2,rdlx,rdly,X2,Y2 )
%energy encircled in square region to all energy 
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    mask=(abs(X2)<rdlx).*(abs(Y2)<rdly);
    EC=sum(sum(mask.*I2))/sum(sum(I2));
end

