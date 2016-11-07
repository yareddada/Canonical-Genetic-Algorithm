function f=evaluate(pop)
for i=1:size(pop,1)
    x1=pop(i,1);
    x2=pop(i,2);
    f(i)=-(20+x1^2+x2^2-10*(cos(2*pi*x1)+cos(2*pi*x2)));
end
