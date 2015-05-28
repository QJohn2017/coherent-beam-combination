function phi = phasescreen(sgx,lambda,M,dx1)
%PHASESCREEN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ
    
 
    phi=zeros(M+1,M+1,numel(lambda));%Initiate phi matrix
    b=zeros(M+1,M+1,numel(lambda));

    a=2*rand(M+1)-1;
    
    for k=1:numel(lambda)%different wavelength
    sgy=sgx;
    dx=dx1(k);
    x=-M*dx/2:dx:M*dx/2;
    y=x;
    [X,Y]=meshgrid(x,y);
    b=exp(-((X/sgx).^2+(Y/sgy).^2));
    phi(:,:,k)=conv2(a,b,'same');
%     figure,mesh(x,y,phi(:,:,k));
    end
   
end

