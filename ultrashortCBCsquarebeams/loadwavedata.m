%%
%obtain data in matrix form from struct generated by wavefront.m file

clear all;
NumPar=20;%Number of para_same set
NumPoint=50;%Number of data point per each set
NumData=NumPar*NumPoint;%Total number of Data
SR=zeros(NumData,1);
SRdl=SR;
ECdl=SR;
rof80x=SR;
rof80y=SR;
EC=zeros(NumData,1);
PV=zeros(NumData,1);
RMS=zeros(NumData,1);
GRMS=zeros(NumData,1);
GPV=zeros(NumData,1);
for i=1:NumPar
load(['E:\Wavefront20150513\diffwave\pardiff_',num2str(i*0.05),'.mat']);
    for j=1:numel(para_same)
        idx=(i-1)*50+j;
        SR(idx)=para_same(j).SR;
        SRdl(idx)=para_same(j).SRdl;
        ECdl(idx)=para_same(j).ECdl;
        rof80x(idx)=para_same(j).rof80(1);
        rof80y(idx)=para_same(j).rof80(2);
        PV(idx)=para_same(j).PV;
        RMS(idx)=para_same(j).RMS;
        GRMS(idx)=para_same(j).GRMS;
        GPV(idx)=para_same(j).GPV;
    end
        clear para_same 
end
save ('E:\Wavefront20150513\parsamedata.mat','SR','SRdl','ECdl','rof80x','rof80y','PV','RMS','GRMS','GPV');