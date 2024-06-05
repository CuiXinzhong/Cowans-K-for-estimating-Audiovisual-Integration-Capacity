function f=fun1(k)
global rawp1 rawp2 rawp3 rawp4
f=sum((rawp1-(k/(2*1)+0.5))^2+(rawp2-(k/(2*2)+0.5))^2+(rawp3-(k/(2*3)+0.5))^2+(rawp4-(k/(2*4)+0.5))^2);
end
