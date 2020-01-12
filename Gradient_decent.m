function theta=Gradient_decent(x,y,alpha,theta,iter)
  s1=0;
  s2=0;
  m=size(x,1);
  vecteur=[];
 for j=1:iter
  for i=1:size(x,1)
    s1=s1+Hypothese(x,theta,i)-y(i);
  endfor
    for i=1:size(x,1)
    s2=s2+(Hypothese(x,theta,i)-y(i))*x(i,2);
  endfor
  
  theta(1)=theta(1)-(alpha*s1)/m;
  theta(2)=theta(2)-(alpha*s2)/m;
  vecteur=[vecteur;cost(x,y,theta)];
  figure(1);
plot(vecteur,'-');
hold on;
endfor

endfunction
