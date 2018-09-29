clear 
close all
clc
syms x
fu=input('Ingrese una funcion: ');
%solu=solve(fu,x);
%fprintf('Existen %d raices, ingrese la que quiere calcular:\n',length(solu))
%for k=1:length(solu)
 %   fprintf('%d: %f\n',k,solu(k))
%end
%ra=input('');
%disp('sugerencia para los intervalos')
%rr=sqrt(abs(solu(ra)));
%as=solu(ra)-rr;
%bs=solu(ra)+rr;
%disp(as)
%disp(bs)
a=input('Ingrese el primer punto: ');
b=input('Ingrese el segundo punto: ');
[y,ww]=seca(a,b,fu);
%[y2,ww2]=seca(5*pi,10*pi,fu);
%[y3,ww3]=seca(10*pi,pi/2,fu);
ezplot(fu)
grid on
hold on
for i=1:length(ww)
    yww(i)=double(subs(fu,ww(i)));
    plot(ww(i),yww(i),'o')
end
%for j=1:length(ww2)
 %    yww2(j)=double(subs(fu,ww2(j)));
  %  plot(ww2(j),yww2(j),'*')
%end
%for k=1:length(ww3)
 %    yww3(k)=double(subs(fu,ww3(k)));
  %  plot(ww3(k),yww3(k),'+')
%end
hold off