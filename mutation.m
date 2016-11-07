function newPop=mutation(pop,pm,l)
newPop=pop;
for i=1:l
    if rand<pm
    newPop(i,:)=randn*0.2+pop(i,:);
    end
end
