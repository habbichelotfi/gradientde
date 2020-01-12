function y=cost(x,y,theta)
  m=size(x,1);
  s=0;
  for i=1:m
    s=s+power(Hypothese(x,theta,i)-y(i),2);
  end
  y=s/(2*m);
endfunction
