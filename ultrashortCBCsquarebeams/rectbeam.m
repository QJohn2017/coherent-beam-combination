function [ output ] = rectbeam( X,Y,w)

%RECTBEAM �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
output=(rect(X/w).*rect(Y/w));
end

