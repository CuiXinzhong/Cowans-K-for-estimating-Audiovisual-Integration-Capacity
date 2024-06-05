clear
addpath([pwd,'/Function']);

global rawp1 rawp2 rawp3 rawp4
raw=xlsread('ExampleData.csv');

%%
result(:).bestfitp1=[];
for i=1:size(raw,1)
    
    rawp1=raw(i,1);
    rawp2=raw(i,2);
    rawp3=raw(i,3);
    rawp4=raw(i,4);
    
    %%
    [k1,minsquart1]=fmincon('fun1',0,[1/2;1/4;1/6;1/8],[0.5;0.5;0.5;0.5],[],[],0,1);
    [k2,minsquart2]=fmincon('fun2',1,[1/4;1/6;1/8],[0.5;0.5;0.5],[],[],1,2);
    [k3,minsquart3]=fmincon('fun3',2,[1/6;1/8],[0.5;0.5],[],[],2,3);
    [k4,minsquart4]=fmincon('fun4',3,1/8,0.5,[],[],3,4);
    [k5,minsquart5]=fmincon('fun5',4,[],[],[],[],4,4);
    
    %% 
    rmse=[minsquart1,minsquart2,minsquart3,minsquart4,minsquart5];
    minrmse=min([minsquart1,minsquart2,minsquart3,minsquart4,minsquart5]);
    idx=find(rmse==minrmse);
    idxchose=idx(end);
    
    %%
    if idxchose==1
        SS=minsquart1;
        k=k1;
        bestfitp1=k/(2*1)+0.5;
        bestfitp2=k/(2*2)+0.5;
        bestfitp3=k/(2*3)+0.5;
        bestfitp4=k/(2*4)+0.5;
    elseif idxchose==2
        SS=minsquart2;
        k=k2;
        bestfitp1=1;
        bestfitp2=k/(2*2)+0.5;
        bestfitp3=k/(2*3)+0.5;
        bestfitp4=k/(2*4)+0.5;
    elseif idxchose==3
        SS=minsquart3;
        k=k3;
        bestfitp1=1;
        bestfitp2=1;
        bestfitp3=k/(2*3)+0.5;
        bestfitp4=k/(2*4)+0.5;
    elseif idxchose==4
        SS=minsquart4;
        k=k4;
        bestfitp1=1;
        bestfitp2=1;
        bestfitp3=1;
        bestfitp4=k/(2*4)+0.5;
    elseif idxchose==5
        SS=minsquart5;
        k=k5;
        bestfitp1=1;
        bestfitp2=1;
        bestfitp3=1;
        bestfitp4=1;
    end
    
    %%
    result(i).bestfitp1=bestfitp1;
    result(i).bestfitp2=bestfitp2;
    result(i).bestfitp3=bestfitp3;
    result(i).bestfitp4=bestfitp4;
    result(i).K=k;
    result(i).SS=SS;
end





