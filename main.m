
load Input1.txt;
load Output.txt;
alpha=0.000006;
y=Output;
theta=[0,0];
nbrIter=60;
x=[ones(size(Input1,1),1),Input1];
theta=Gradient_decent(x,Output,alpha,theta,nbrIter);
vecteur=[];
for i=1:size(x,1)
vecteur=[vecteur;Hypothese(x,theta,i)];
 endfor
  figure(2);
  plot(x(:,2),y,'rx','MarkerSize',9);

 title('fonction du cost');
 xlabel('input');
 ylabel('output');
 hold on;
 
 plot(x(:,2),vecteur,'-');
 legend('data','linear regression');

