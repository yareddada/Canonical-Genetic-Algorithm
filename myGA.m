function [bestInd,best,worst,meanVal]=myGA(mu,l,pc,pm)

pop=rand(mu,l)*20-10;
f=evaluate(pop);

for iter=1:100
    pop=crossOver(pop,f,pc,mu,l);
    pop=mutation(pop,pm,l);
    f=evaluate(pop);
    
    [best(iter) temp]=max(f);
    worst(iter)=min(f);
    meanVal(iter)=mean(f);
    bestInd(iter,1)=pop(temp,1);
    bestInd(iter,2)=pop(temp,2); 
end

