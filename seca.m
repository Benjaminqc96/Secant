function [y,ww]=seca(a,b,fu)
syms x
w(1)=a;
w(2)=b;
ww(1)=a;
ww(2)=b;
control=true;
while control
for i=1:100
    w(i+2)=w(i+1)-((subs(fu,w(i+1))*(w(i+1)-w(i)))/(subs(fu,w(i+1))-subs(fu,w(i))));
    ww(i+2)=double(w(i+2));
    if abs(ww(i+1)-ww(i))<10e-5
        control=false;
        disp(w(i+2))
        y=w(i+2);
        break
       
    elseif i==100
        control=false;
        y=0;
        break
        
    end
end
end
end