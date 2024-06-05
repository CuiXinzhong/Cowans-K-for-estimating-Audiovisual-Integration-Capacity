function f=fun3(k)
global rawp1 rawp2 rawp3 rawp4
f=sum((rawp1-1)^2+(rawp2-1)^2+(rawp3-(k/(2*3)+0.5))^2+(rawp4-(k/(2*4)+0.5))^2);
end