function newPop=crossOver(pop,f,pc,mu,l)
popSize=size(pop,1);
fitness=f';
NewPop=zeros(mu,l);
for i=1:size(pop,1)
    if i<4 || i>size(pop,1)-4
        newPop(i,:)=pop(i,:);
    else
        a=round(rand(1)*3);
        temp=pop(i+a*(-1)^a,:);
        alpha=rand(1);
        child=alpha*pop(i,:)+(1-alpha)*pop(i+a*(-1)^a,:);
        f1=evaluate(pop(i,:));
        f2=evaluate(pop(i+a*(-1)^a,:));
        f3=evaluate(child);
        if f3>max(f1,f2)
            newPop(i,:)=child;
        else
            newPop(i,:)=pop(i,:);
        end
    end
end


